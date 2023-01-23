LICENSE = "CLOSED"
inherit systemd

RDEPENDS:${PN} += " dbus libev "

SRC_URI = " file://gps.json \
            file://pollux-gps \
            file://polluxgps.service \
"
INSANE_SKIP:${PN} += "already-stripped"
SYSTEMD_AUTO_ENABLE = "enable"
SYSTEMD_SERVICE:${PN} ="polluxgps.service"

do_install() {

  if ![ -d "${D}${sysconfdir}/pollux" ]; then
    bbnote " /etc/pollux directory doesn't exist, creating it..."
    mkdir ${D}${sysconfdir}/pollux
  fi

  if ![ -d "${D}/var/log/pollux" ]; then
    bbnote " /etc/pollux directory doesn't exist, creating it..."
    install -d ${D}/var/log/pollux
  fi
  
  install -d ${D}${bindir}
  install -d ${D}${sysconfdir}/pollux
  install -d ${D}${sysconfdir}/systemd/system
  
  install -m 0644 ${WORKDIR}/polluxgps.service ${D}${sysconfdir}/systemd/system
  install ${WORKDIR}/gps.json         ${D}${sysconfdir}/pollux/
  install -m 0755 ${WORKDIR}/pollux-gps       ${D}${bindir}
}

FILES:${PN} += " \
  ${sysconfdir}/pollux/gps.json \
  ${bindir}/pollux-gps \
  ${sysconfdir}/systemd/system/polluxgps.service \
"

RPROVIDES:${PN} += " \
                    libpollux.so()(64bit) \
                    libhiredis.so.0.14()(64bit) \
                    libdbus-1.so.3()(64bit) \
                    libdbus-1.so.3(LIBDBUS_1_3)(64bit) \
"