FILESEXTRAPATHS:append := ":${THISDIR}/files"

SRC_URI:append = " file://90-mm-gsm.rules "

do_install:append () {
    # Move udev rules into /lib as /etc/udev/rules.d is bind mounted for custom rules
    install -d ${D}${base_libdir}/udev/rules.d
    mv ${D}/etc/udev/rules.d/*.rules ${D}${base_libdir}/udev/rules.d/

   	install -m 0644 ${WORKDIR}/90-mm-gsm.rules ${D}${base_libdir}/udev/rules.d/

}