#!/usr/bin/env bash
#
# owasys-quectel-ecm-modem-setup
#
# Purpose:
#   Ensure Quectel EG25-G modem is configured with usbnet=1
#
# Trigger:
#   Intended to be launched by udev when the modem appears:
#     SUBSYSTEM=="usb", ATTR{idVendor}=="2c7c", ATTR{idProduct}=="0125"
#

set -euo pipefail

LOG_TAG="owasysd-quectel-ecm-modem-setup"
# Quectel EG25-G usdbnet 1, modem appears as an usb-ethernet adapter
TARGET_USBNET="1"

log() {
    logger -t "${LOG_TAG}" "$1"
    echo "$1"
}

# Wait for ModemManager to discover at least one modem
MODEM_ID=""

for i in {1..15}; do
    MODEM_ID="$(
        mmcli -L 2>/dev/null \
        | sed -n 's#.*/Modem/\([0-9]\+\).*#\1#p' \
        | head -n1
    )"

    if [[ -n "${MODEM_ID}" ]]; then
        break
    fi

    sleep 1
done

if [[ -z "${MODEM_ID}" ]]; then
    log "ERROR: No modem found in ModemManager"
    exit 1
fi

log "Using modem ${MODEM_ID}"

send_at() {
    local cmd="$1"

    mmcli -m "${MODEM_ID}" --command="${cmd}" 2>/dev/null || true
}

log "Checking current usbnet mode..."

RESPONSE="$(send_at 'AT+QCFG="usbnet"')"

log "Modem response: ${RESPONSE//$'\n'/ }"

CURRENT_MODE="$(
    echo "${RESPONSE}" \
    | sed -n 's/^.*+QCFG: "usbnet",\([0-9]\+\).*$/\1/p' \
    | head -n1
)"

if [[ -z "${CURRENT_MODE}" ]]; then
    log "ERROR: Could not determine current usbnet mode"
    exit 1
fi

if [[ "${CURRENT_MODE}" == "${TARGET_USBNET}" ]]; then
    log "usbnet already set to ${TARGET_USBNET}. Nothing to do."
    exit 0
fi

log "Changing usbnet mode from ${CURRENT_MODE} to ${TARGET_USBNET}..."

AT_CMD="AT+QCFG=\"usbnet\",${TARGET_USBNET}"
SET_RESPONSE="$(send_at "${AT_CMD}")"

log "Set response: ${SET_RESPONSE//$'\n'/ }"

if echo "${SET_RESPONSE}" | grep -q "OK"; then
    log "usbnet successfully changed to ${TARGET_USBNET}"

    log "Rebooting modem..."

    send_at 'AT+CFUN=1,1'

    exit 0
else
    log "ERROR: Failed to change usbnet mode"
    exit 1
fi