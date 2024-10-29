# Flash to internal eMMC - kernel enumerates this, when SD card is in, as mmcblk1
INTERNAL_DEVICE_KERNEL:owa5x = "mmcblk2"

FILESEXTRAPATHS:append := ":${THISDIR}/${PN}"

SRC_URI:append = " file://sleep_for_provisioning.patch"
