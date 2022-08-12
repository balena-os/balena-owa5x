# Requirements from https://github.com/balena-os/meta-balena/blob/master/contributing-device-support.md#recipes-bsp
UBOOT_KCONFIG_SUPPORT="1"
BALENA_UBOOT_DEVICE_TYPES="usb mmc"
inherit resin-u-boot

FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

# resin-u-boot class patch is rebased
SRC_URI_remove = " file://resin-specific-env-integration-kconfig.patch"

SRC_URI_append_owa5x = "    file://0001-Added-defconfig-options-needed-for-Balena.patch \
                            file://0002-Added-env_resin.h-to-the-env_defaults.h-and-changed-.patch \
                            file://0003-Set-uboot-env-variables-to-load-the-kernel-in-gz-for.patch \
                            file://0004-First-unzip-the-kernel.patch \
                            file://0005-Fixed-booti-bug-command.patch \
                            file://0006-bootargs-fixed.patch \
                            file://0007-bootargs-fixed-2.patch \
                            file://0008-Changed-maximum-decompressed-kernel-size-via-define-.patch \
                            file://0009-Changed-env-sizes.patch \
                            file://0010-Changed-env-sizes-again.patch \
                            file://0011-Changed-terminal-prompt-uboot-local-version-and-mmc-.patch \
                         "

do_configure[nostamp] = "1"
do_compile[nostamp] = "1"