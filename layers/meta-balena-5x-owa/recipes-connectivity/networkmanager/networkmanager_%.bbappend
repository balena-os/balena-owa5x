FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

SRC_URI:append = " \
        file://99-unmanaged-uap-devices.conf \
        file://zz-networkmanager.conf \
"

do_install:append() {
    install -d ${D}${libdir}/NetworkManager/conf.d
    install -m 0644 \
        ${WORKDIR}/zz-networkmanager.conf \
        ${D}${libdir}/NetworkManager/conf.d/zz-networkmanager.conf
    install -m 0644 ${WORKDIR}/99-unmanaged-uap-devices.conf ${D}${libdir}/NetworkManager/conf.d/
}
