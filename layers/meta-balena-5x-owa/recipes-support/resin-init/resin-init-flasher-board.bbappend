FILESEXTRAPATHS_append := "${THISDIR}/${PN}"

do_install_append() {
    install -d ${D}${bindir}
    install -m 0755 ${WORKDIR}/resin-init-flasher-board ${D}${bindir}
}