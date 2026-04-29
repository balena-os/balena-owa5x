SUMMARY = "install timeinit script to get date from owasys RTC"
FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

SYSTEMD_SERVICE:${PN} += " \
    timeinit-rtc.service \
"
