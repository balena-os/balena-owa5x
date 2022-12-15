include balena-image.inc

BALENA_BOOT_PARTITION_FILES = " \
     ${KERNEL_IMAGETYPE}${KERNEL_INITRAMFS}-${MACHINE}.bin:/Image.gz \
     imx8mp-owa5x.dtb:/imx8mp-owa5x.dtb \
     ${MACHINE}-flash.bin:/${MACHINE}-flash.bin \
"
