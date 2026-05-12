SUMMARY = " Owasys service to force Quectel Modem EG25-G into ECM mode. In this modem handles whole TCP/IP stack and connectivity \
is done through an usb-ethernet like interface "
LICENSE = "Proprietary"
LIC_FILES_CHKSUM ="file://${COMPANY_CUSTOM_LICENSES}/copyright;md5=d9808d05a6f4f9e517af468c7f14a160"
inherit systemd

RDEPENDS:${PN} += " \
    bash \
"

SYSTEMD_AUTO_ENABLE = "enable"
SYSTEMD_SERVICE:${PN} ="owasysd-quectel-modem-setup.service"

SRC_URI = " \
    file://99-quectel-eg25g.rules \
    file://owasys-quectel-mode-setup.sh \
    file://owasysd-quectel-modem-setup.service \
"

do_install() {
  
    install -d ${D}${sbindir}
    install -d ${D}${libdir}/udev/rules.d
    install -d ${D}${sysconfdir}/systemd/system  

    install -m 0755 ${WORKDIR}/owasys-quectel-mode-setup.sh ${D}${sbindir}
    install -m 0644 ${WORKDIR}/99-quectel-eg25g.rules ${D}${libdir}/udev/rules.d
    install -m 0644 ${WORKDIR}/owasysd-quectel-modem-setup.service ${D}${sysconfdir}/systemd/system

}

FILES:${PN} += " \
    ${sbindir}/owasys-quectel-mode-setup.sh \
    ${sysconfdir}/udev/rules.d/99-quectel-eg25g.rules \
    ${sysconfdir}/systemd/owasysd-quectel-modem-setup.service \    
"
