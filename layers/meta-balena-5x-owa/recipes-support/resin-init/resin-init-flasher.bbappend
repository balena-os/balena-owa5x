# Flash to internal eMMC - kernel enumerates this, when SD card is in, as mmcblk1
INTERNAL_DEVICE_KERNEL = "mmcblk2"

### Information needed to write the 1st stage bootloader binary
# Partition onto which owa5x-flash needs to be flashed to
BOOTLOADER_FLASH_DEVICE = "mtd0"

# name of the 1st stage bootloader binary
BOOTLOADER_IMAGE = "${MACHINE}-flash.bin"

# block size to use when writing MLO
BOOTLOADER_BLOCK_SIZE_OFFSET = "1024"

# number of blocks to skip from mtdblock0 when writing the MLO to it
BOOTLOADER_SKIP_OUTPUT_BLOCKS = "0"
