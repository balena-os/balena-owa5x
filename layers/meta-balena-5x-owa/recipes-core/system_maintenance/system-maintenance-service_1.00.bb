LICENSE = "CLOSED"
inherit systemd

DEPENDS += " \
    system-maintenance \
"
RDEPENDS:${PN} += "\
			      system-maintenance \
"

SYSTEMD_AUTO_ENABLE = "enable"
SYSTEMD_SERVICE:${PN} ="system_maintenance.service"

SRC_URI:append = " file://system_maintenance.service "
FILES:${PN} += "${systemd_unitdir}/system/system_maintenance.service"

do_install:append() {
  install -d ${D}/${systemd_unitdir}/system
  install -m 0644 ${WORKDIR}/system_maintenance.service ${D}/${systemd_unitdir}/system
}