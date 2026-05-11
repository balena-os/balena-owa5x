#!/usr/bin/env bash
#
# owasys-quectel-mode-setup.sh
#
# Purpose:
#   Ensure Quectel EG25-G modem is configured with usbnet=1
#
# Trigger:
#   Intended to be launched by udev when the modem appears:
#     SUBSYSTEM=="usb", ATTR{idVendor}=="2c7c", ATTR{idProduct}=="0125"
#
# Modem AT port:
#   /dev/ttyUSB3
#

set -euo pipefail

TTY_DEV="/dev/ttyUSB3"
LOG_TAG="owasys-quectel-mode-setup"

TARGET_USBNET="1"

log() {
    logger -t "${LOG_TAG}" "$1"
    echo "$1"
}

# Wait for tty device to become available
for i in {1..15}; do
    if [[ -e "${TTY_DEV}" ]]; then
        break
    fi
    sleep 1
done

if [[ ! -e "${TTY_DEV}" ]]; then
    log "ERROR: ${TTY_DEV} not found"
    exit 1
fi

send_at() {
    local cmd="$1"

    # Clear pending data
    timeout 1 cat "${TTY_DEV}" > /dev/null 2>&1 || true

    # Send command
    printf '%s\r' "${cmd}" > "${TTY_DEV}"

    # Read response
    timeout 3 cat "${TTY_DEV}" || true
}

log "Checking current usbnet mode..."

RESPONSE="$(send_at 'AT+QCFG="usbnet"')"

log "Modem response: ${RESPONSE//$'\n'/ }"

CURRENT_MODE="$(echo "${RESPONSE}" | sed -n 's/^.*+QCFG: "usbnet",\([0-9]\+\).*$/\1/p')"

if [[ -z "${CURRENT_MODE}" ]]; then
    log "ERROR: Could not determine current usbnet mode"
    exit 1
fi

if [[ "${CURRENT_MODE}" == "${TARGET_USBNET}" ]]; then
    log "usbnet already set to ${TARGET_USBNET}. Nothing to do."
    exit 0
fi

log "Changing usbnet mode from ${CURRENT_MODE} to ${TARGET_USBNET}..."

SET_RESPONSE="$(send_at 'AT+QCFG="usbnet",1')"

log "Set response: ${SET_RESPONSE//$'\n'/ }"

if echo "${SET_RESPONSE}" | grep -q "OK"; then
    log "usbnet successfully changed to ${TARGET_USBNET}"

    # Optional modem reset may be required on some firmware versions
    # Uncomment if needed:
    # send_at 'AT+CFUN=1,1'

    exit 0
else
    log "ERROR: Failed to change usbnet mode"
    exit 1
fi
