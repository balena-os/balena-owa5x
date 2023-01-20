DESCRIPTION = "Systemd services used to bindmount /etc/pollux and make writable on a RO FS"
LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"

inherit systemd

SRC_URI = "file://bind-etc-pollux.service \
           file://bindmount_pollux.sh   "
FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"
RDEPENDS:${PN} = " systemd bash "
SYSTEMD_AUTO_ENABLE = "enable"

do_install () {

   install -d ${D}${bindir}
   install -d ${D}/${systemd_unitdir}/system
   install -m 644 ${WORKDIR}/bind-etc-pollux.service ${D}/${systemd_unitdir}/system/bind-etc-pollux.service
   install -m 755 ${WORKDIR}/bindmount_pollux.sh ${D}${bindir}

}

SYSTEMD_SERVICE:${PN} = "bind-etc-pollux.service"
