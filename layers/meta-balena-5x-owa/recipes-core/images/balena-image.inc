IMAGE_FSTYPES:append = " balenaos-img "

DEVICE_TYPE = "owa5x"

BALENA_BOOT_PARTITION_FILES:owa5x += " \
     ${MACHINE}-flash.bin:/${MACHINE}-flash.bin \
     imx8mp-owa5x.dtb:/imx8mp-owa5x.dtb \
"

IMAGE_CMD:balenaos-img:append () {
    dd if=${DEPLOY_DIR_IMAGE}/${MACHINE}-flash.bin of=${BALENA_RAW_IMG} conv=notrunc seek=32 bs=1K
}

BALENA_BOOT_SIZE = "70000"
IMAGE_ROOTFS_SIZE = "409600"

IMAGE_INSTALL:remove = "kernel-image"

IMAGE_INSTALL:append = " \
                        u-boot-owasys \
                        imx-boot-owasys \
                        imx-kobs \
                        net-tools \ 
                        inetutils \
                        systemd-extra-utils \
                        iw \
                        iproute2 \
                        can-utils \
                        u-boot-fw-utils \
                        kernel-modules\                        
                        linux-firmware-owasys \
                        wpa-supplicant \                        
                        pmsrv-service \
                        stm32l431vc \
                        mlanutl \                        
                        alsa-lib \
                        packagegroup-owasys-libs \
                        owasys-off \
                        owasys-standby \
                        owasys-start-can \
                        owasys-start-bt-wifi \
                        owasys-test \
                        owasys-turn-gsm-off \
                        udev-owasys \
                        owasys-rtc \
                        owasys-rtu \
                        owasys-eth0 \
                        sysclktohw \
                        hwclktosys \
                        quectel-cm \
                        owasys-switch-gsm \
                        issue-owa \
                        owasys-mff2-select \
                        owasys-libpollux \
                        owasys-pollux-gps \
                        owasys-pollux-core \
                        owasys-pollux-cli \
                        owasys-pollux-device \
                        owasys-pollux-can \
"

deltask do_packagedata
