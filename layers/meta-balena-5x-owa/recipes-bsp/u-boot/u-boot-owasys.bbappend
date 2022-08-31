# Requirements from https://github.com/balena-os/meta-balena/blob/master/contributing-device-support.md#recipes-bsp
UBOOT_KCONFIG_SUPPORT="1"
BALENA_UBOOT_DEVICE_TYPES="usb mmc"
inherit resin-u-boot

FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

# resin-u-boot class patch is rebased
SRC_URI_remove = " file://resin-specific-env-integration-kconfig.patch"

SRC_URI_append_owa5x = " file://u-boot_owasys_to_balena.patch \
"

do_configure[nostamp] = "1"
do_compile[nostamp] = "1"