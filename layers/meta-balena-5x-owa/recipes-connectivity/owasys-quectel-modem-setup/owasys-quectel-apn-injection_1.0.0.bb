SUMMARY = " Owasys service to parse nmconnection file and mmcli inject APN into the modem."
LICENSE = "Proprietary"
LIC_FILES_CHKSUM ="file://${COMPANY_CUSTOM_LICENSES}/copyright;md5=d9808d05a6f4f9e517af468c7f14a160"
inherit systemd

RDEPENDS:${PN} += " \
    bash \
"

SYSTEMD_AUTO_ENABLE = "enable"
SYSTEMD_SERVICE:${PN} = "owasysd-quectel-apn-injection.service"

SRC_URI = " \
    file://owasys-quectel-apn-injection.sh \
    file://owasysd-quectel-apn-injection.service \
"

do_install() {
  
    install -d ${D}${sbindir}
    install -d ${D}${sysconfdir}/systemd/system

    install -m 0755 ${WORKDIR}/owasys-quectel-apn-injection.sh ${D}${sbindir}
    install -m 0644 ${WORKDIR}/owasysd-quectel-apn-injection.service ${D}${sysconfdir}/systemd/system

}

FILES:${PN} += " \
    ${sbindir}/owasys-quectel-apn-injection.sh \
    ${sysconfdir}/systemd/owasysd-quectel-apn-injection.service \
"
