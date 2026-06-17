FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

SRC_URI:append = " \
        file://99-unmanaged-uap-devices.conf \
"

do_install:append() {
    install -m 0644 ${WORKDIR}/99-unmanaged-uap-devices.conf ${D}${sysconfdir}/NetworkManager/conf.d/
}
