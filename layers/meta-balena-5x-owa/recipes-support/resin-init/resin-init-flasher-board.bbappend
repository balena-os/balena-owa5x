FILESEXTRAPATHS:append := "${THISDIR}/${PN}"
SRC_URI = "file://nand-flash.bin \
           file://resin-init-flasher-board \ 
"

do_install:append() {
    install -d ${D}${bindir}
    install -m 0755 ${WORKDIR}/resin-init-flasher-board ${D}${bindir}
    install -m 0755 ${WORKDIR}/nand-flash.bin           ${D}${bindir}
}
