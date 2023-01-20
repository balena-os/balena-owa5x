LICENSE = "CLOSED"
inherit systemd

DEPENDS += " \
            pmsrv \
"
RDEPENDS:${PN} += "\
			      pmsrv \
"

SYSTEMD_AUTO_ENABLE = "enable"
SYSTEMD_SERVICE:${PN} ="pmsrv.service"

SRC_URI:append = " file://pmsrv.service "
FILES:${PN} += "${sysconfdir}/systemd/pmsrv.service"

do_install:append() {
  install -d ${D}${sysconfdir}/systemd/system
  install -m 0644 ${WORKDIR}/pmsrv.service ${D}${sysconfdir}/systemd/system
}