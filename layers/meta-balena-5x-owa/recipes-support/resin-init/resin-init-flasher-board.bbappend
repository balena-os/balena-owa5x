FILESEXTRAPATHS_append := "${THISDIR}/${PN}"
SRC_URI = "file://nand-flash.bin \
           file://resin-init-flasher-board \ 
"

do_install_append() {
    install -d ${D}${bindir}
    install -m 0755 ${WORKDIR}/resin-init-flasher-board ${D}${bindir}
    install -m 0755 ${WORKDIR}/nand-flash.bin           ${D}${bindir}
<<<<<<< HEAD
}
=======
}
>>>>>>> ac6defce54752cc3aa44cf3531f1cc411c997f5a
