LICENSE = "CLOSED"

inherit kernel-resin deploy
#inherit kernel-resin

# Fixes error: packages already installed
# by kernel-image-initramfs
#do_install:append() {
#	rm ${D}/boot/Image.gz-5.10.72-1.0.7
#}

BALENA_CONFIGS:append = " nfsfs"
BALENA_CONFIGS[nfsfs] = " \
    CONFIG_NFS_FS=m \
    CONFIG_NFS_V2=m \
    CONFIG_NFS_V3=m \
    CONFIG_NFS_V4=m \
    CONFIG_NFSD_V3=y \
    CONFIG_NFSD_V4=y \
"


#BALENA_CONFIGS[nfsfs] = " \
#    CONFIG_NFS_FS=m \
#    CONFIG_NFS_V2=m \
#    CONFIG_NFS_V3=m \
#    CONFIG_NFS_V4=m \
#    CONFIG_NFSD_V3=y \
#    CONFIG_NFSD_V4=y \
#"

SCMVERSION="n"
