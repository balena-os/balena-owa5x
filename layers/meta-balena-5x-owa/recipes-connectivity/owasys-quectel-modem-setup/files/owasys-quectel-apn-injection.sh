#!/usr/bin/env bash

set -euo pipefail

TAG="owasys-quectel-apn-injection"
CONN_DIR="/etc/NetworkManager/system-connections"
POLL_INTERVAL=2
CID=1

###############################################################################
# Logging
###############################################################################

log() {
    local level="$1"
    shift

    logger -t "$TAG" -p "user.$level" "$*"

    printf '%s [%s] %s\n' \
        "$(date '+%F %T')" \
        "$level" \
        "$*"
}

###############################################################################
# Helpers
###############################################################################

extract_modem_id() {
    local line="$1"

    local tmp="${line##*/Modem/}"
    printf '%s\n' "${tmp%% *}"
}

###############################################################################
# Wait for ModemManager
###############################################################################

if ! command -v mmcli >/dev/null 2>&1; then
    log err "mmcli not installed"
    exit 1
fi

log info "Waiting for ModemManager service"

until systemctl is-active --quiet ModemManager; do
    sleep "$POLL_INTERVAL"
done

log info "ModemManager is active"

###############################################################################
# Wait for modem
###############################################################################

log info "Waiting for modem hotplug"

while true; do
    modem_lines=$(mmcli -L 2>/dev/null | grep "/Modem/" || true)

    if [[ -n "$modem_lines" ]]; then
        break
    fi

    sleep "$POLL_INTERVAL"
done

log notice "Detected modem(s)"

###############################################################################
# Process modems
###############################################################################

while read -r modem_line; do

    [[ -z "$modem_line" ]] && continue

    modem_id=$(extract_modem_id "$modem_line")

    log notice "Using modem $modem_id"

    ###########################################################################
    # Wait until modem is usable
    ###########################################################################

    while true; do

        modem_state=$(
            mmcli -m "$modem_id" 2>/dev/null |
            awk -F': ' '
                /state/ {
                    gsub(/^[[:space:]]+/, "", $2)
                    print $2
                    exit
                }
            '
        )

        case "$modem_state" in
            connected|registered|enabled)
                break
                ;;
        esac

        sleep "$POLL_INTERVAL"
    done

    log info "Modem state is '$modem_state'"

    ###########################################################################
    # Read GSM section
    ###########################################################################

    find "$CONN_DIR" -type f | while read -r selected_file; do

        APN=""
        USERNAME=""
        PASSWORD=""

        while IFS='=' read -r key value; do

            key="$(echo "$key" | xargs)"
            value="$(echo "$value" | xargs)"

            case "$key" in
                apn)  APN="$value" ;;
                user) USERNAME="$value" ;;
                pass) PASSWORD="$value" ;;
            esac

        done < <(
            awk '
                /^\[gsm\]/ { in_gsm=1; next }
                /^\[/      { in_gsm=0 }
                in_gsm
            ' "$selected_file"
        )

        if [[ -z "$APN" ]]; then
            log err "No APN found in $selected_file"
            continue
        fi

        log info "Processing profile: $selected_file"
        log info "Desired APN: $APN"


        ###########################################################################
        # Read current modem configuration
        ###########################################################################

        current_cgdcont=$(
            mmcli -m "$modem_id" \
                --command='AT+CGDCONT?' \
                2>/dev/null || true
        )

        current_apn=$(
            printf '%s\n' "$current_cgdcont" |
            sed -n \
                's/.*+CGDCONT:[[:space:]]*1,"[^"]*","\([^"]*\)".*/\1/p'
        )

        current_qicsgp=$(
            mmcli -m "$modem_id" \
                --command="AT+QICSGP=$CID" \
                2>/dev/null || true
        )

        ###########################################################################
        # Skip if already configured
        ###########################################################################
        if [[ "$current_apn" == "$APN" ]]; then
            log info "APN already configured ($APN), skipping"
            continue
        fi

        ###########################################################################
        # Configure PDP context
        ###########################################################################
        cgdcont_cmd="AT+CGDCONT=$CID,\"IPV4V6\",\"$APN\""

        log notice "Injecting APN via CGDCONT"

        mmcli -m "$modem_id" \
            --command="$cgdcont_cmd"

        ###########################################################################
        # Configure credentials
        ###########################################################################
        if [[ -n "$USERNAME" || -n "$PASSWORD" ]]; then

            qicsgp_cmd="AT+QICSGP=$CID,1,\"$APN\",\"$USERNAME\",\"$PASSWORD\",3"

            log notice "Injecting credentials via QICSGP"

            mmcli -m "$modem_id" \
                --command="$qicsgp_cmd"
        else
            log info "No username/password configured"
        fi

    done

    ###########################################################################
    # Verify
    ###########################################################################

    log info "Verification"

    mmcli -m "$modem_id" --command='AT+CGDCONT?' || true
    mmcli -m "$modem_id" --command="AT+QICSGP=$CID" || true

    log notice "Configuration completed"

done <<< "$modem_lines"

log notice "Finished"