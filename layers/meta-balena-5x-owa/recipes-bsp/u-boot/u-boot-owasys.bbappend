# Requirements from https://github.com/balena-os/meta-balena/blob/master/contributing-device-support.md#recipes-bsp
UBOOT_KCONFIG_SUPPORT="1"
BALENA_UBOOT_DEVICE_TYPES="usb mmc"
inherit resin-u-boot

FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

# resin-u-boot class patch is rebased
SRC_URI:remove = " file://resin-specific-env-integration-kconfig.patch"

SRC_URI:append:owa5x = " file://0001-Integrate-with-Balena-uboot-environment-patch.patch \
                         file://0002-Added-configs-to-load-uboot-from-NAND.patch \
                         file://0003-Added-little-changes-in-defconfig.patch \
                         file://0004-Balena-u-boot-forced-to-believe-it-boots-from-eMMC.patch \
                         file://0005-ENV-can-be-on-NAND-and-in-NOWHERE.patch \
                         file://0006-Fixed-defconfig.patch \
"
SRC_URI += "file://fw_env.config"

do_configure[nostamp] = "1"
do_compile[nostamp] = "1"

do_install:append () {
  install -d ${D}${sysconfdir}
  install -m 0644 ${WORKDIR}/fw_env.config ${D}${sysconfdir}/fw_env.config
}
 
