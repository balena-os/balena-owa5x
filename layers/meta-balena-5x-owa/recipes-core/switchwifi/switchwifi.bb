FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

DESCRIPTION = "Systemd services used for powering up Wifi/BLE module on boot using Owasys tools."
LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"

inherit systemd

SRC_URI = "file://switchwifi.service "

RDEPENDS:${PN} = " systemd"

do_install () {
   install -d ${D}/${systemd_unitdir}/system
   install -m 644 ${WORKDIR}/switchwifi.service ${D}/${systemd_unitdir}/system/switchwifi.service
}

SYSTEMD_SERVICE:${PN} = "switchwifi.service"
