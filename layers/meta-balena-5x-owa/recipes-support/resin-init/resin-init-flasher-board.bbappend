FILESEXTRAPATHS:append := "${THISDIR}/${PN}"
SRC_URI = "file://resin-init-flasher-board \ 
"

do_install:append() {
    install -d ${D}${bindir}
    install -m 0755 ${WORKDIR}/resin-init-flasher-board ${D}${bindir}
}
