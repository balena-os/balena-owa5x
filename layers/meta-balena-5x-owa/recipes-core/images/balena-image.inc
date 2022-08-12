IMAGE_FSTYPES_append = " balenaos-img "

DEPENDS += " imx-boot-owasys "

BALENA_IMAGE_BOOTLOADER_owa5x = " u-boot-owasys "

BALENA_BOOT_PARTITION_FILES = " \
    ${KERNEL_IMAGETYPE}${KERNEL_INITRAMFS}-${MACHINE}.bin:/Image.gz \
    imx8mp-owa5x.dtb:/imx8mp-owa5x.dtb \
    ${MACHINE}-flash.bin:/${MACHINE}-flash.bin \
"

IMAGE_CMD_balenaos-img_append () {
    dd if=${DEPLOY_DIR_IMAGE}/${MACHINE}-flash.bin of=${BALENA_RAW_IMG} conv=notrunc seek=32 bs=1K
}

IMAGE_INSTALL_append = " pmsrvsystemd pmsrv u-boot-owasys imx-boot-owasys alsa-lib owasys-libs kernel-modules \
                         owaturnoff start-can start-bt-wifi test-owa5x turn-gsm-off linux-firmware-owasys wpa-supplicant "

deltask do_packagedata

                    
