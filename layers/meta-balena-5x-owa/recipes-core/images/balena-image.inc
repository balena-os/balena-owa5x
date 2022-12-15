IMAGE_FSTYPES:append = " balenaos-img "

BALENA_BOOT_PARTITION_FILES = " \
     ${KERNEL_IMAGETYPE}${KERNEL_INITRAMFS}-${MACHINE}.bin:/Image.gz \
     imx8mp-owa5x.dtb:/imx8mp-owa5x.dtb \
     ${MACHINE}-flash.bin:/${MACHINE}-flash.bin \
"
IMAGE_CMD:balenaos-img:append () {
    dd if=${DEPLOY_DIR_IMAGE}/${MACHINE}-flash.bin of=${BALENA_RAW_IMG} conv=notrunc seek=32 bs=1K
}

BALENA_BOOT_SIZE = "50000"
IMAGE_ROOTFS_SIZE = "409600"

IMAGE_INSTALL:remove = "kernel-image"

IMAGE_INSTALL:append = " \
                        imx-kobs \
                        net-tools \ 
                        inetutils \
                        iw \
                        iproute2 \
                        can-utils \
                        u-boot-fw-utils \
                        pmsrv \
                        pmsrv-service \
                        u-boot-owasys \
                        imx-boot-owasys \
                        alsa-lib \
                        owasys-libs \
                        kernel-modules\
                        owaturnoff \
                        owastandby \
                        start-can \
                        start-bt-wifi \
                        test-owa5x \
                        turn-gsm-off \
                        linux-firmware-owasys \
                        wpa-supplicant \
                        udev-rules-owasys \
                        system-maintenance-service \
                        rtc-tools \
                        quectel-cm \
                        switch-gsm \
                        st32-firmware \
                        chatscripts \
                        issue-owa \
"

deltask do_packagedata
