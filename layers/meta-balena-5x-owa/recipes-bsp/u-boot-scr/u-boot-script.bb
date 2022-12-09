LICENSE = "GPLv2+"
LIC_FILES_CHKSUM = "file://${WORKDIR}/README;md5=2456088a0455a82ac9e16b007de97c03"

DEPENDS = "u-boot-mkimage-native imx-boot-owasys"

FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"
SRC_URI = "file://boot.script \
"


ALLOW_EMPTY:${PN} = "1"

do_compile() {
	BOOTLOADER=$(basename $(ls ${WORKDIR}/recipe-sysroot/boot/imx-boot-* | head -1))
	sed -i "s|##BOOTLOADER##|${BOOTLOADER}|" ${WORKDIR}/boot.script
    sed "s/MACHINE/${MACHINE}/" ${WORKDIR}/boot.script > ${WORKDIR}/boot.in
    mkimage -C none -A arm -T script -d ${WORKDIR}/boot.in boot.scr
}

inherit deploy

do_deploy() {
    install -d ${DEPLOYDIR}
    install -m 0644 boot.scr ${DEPLOYDIR}
}

addtask do_deploy after do_compile before do_build

RPROVIDES:${PN} += "u-boot-script"

PACKAGE_ARCH = "${MACHINE_ARCH}"
