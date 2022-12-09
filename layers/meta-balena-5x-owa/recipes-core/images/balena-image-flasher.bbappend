include balena-image.inc

BALENA_BOOT_PARTITION_FILES = " \
     ${KERNEL_IMAGETYPE}${KERNEL_INITRAMFS}-${MACHINE}.bin:/Image.gz \
"
