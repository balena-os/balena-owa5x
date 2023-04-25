# Requirements from https://github.com/balena-os/meta-balena/blob/master/contributing-device-support.md#recipes-bsp
UBOOT_KCONFIG_SUPPORT="1"
BALENA_UBOOT_DEVICE_TYPES="usb mmc"
inherit resin-u-boot

FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

# resin-u-boot class patch is rebased
SRC_URI:remove = " file://resin-specific-env-integration-kconfig.patch \
                   git://source.codeaurora.org/external/imx/uboot-imx.git;protocol=https;branch=${SRCBRANCH} \
"

SRC_URI:append:owa5x = " git://github.com/nxp-imx/uboot-imx.git;protocol=https;branch=${SRCBRANCH} \
                      file://Balena-integration-u-boot-env-configs.patch \
                      file://0001-Fix-reboot-issue-upgrade-available-init-value-is-0.patch \
 "

SRC_URI += "file://fw_env.config"

do_configure[nostamp] = "1"
do_compile[nostamp] = "1"

do_install:append () {
  install -d ${D}${sysconfdir}
  install -m 0644 ${WORKDIR}/fw_env.config ${D}${sysconfdir}/fw_env.config
}
 
