LICENSE = "CLOSED"

inherit kernel-resin deploy

SRC_URI:remove = " git://source.codeaurora.org/external/imx/linux-imx.git;protocol=https;branch=${SRCBRANCH} "

SRC_URI:append:owa5x = " git://github.com/nxp-imx/linux-imx.git;protocol=https;branch=${SRCBRANCH} \
 "

BALENA_CONFIGS:append = " nfsfs"
BALENA_CONFIGS[nfsfs] = " \
    CONFIG_NFS_FS=m \
    CONFIG_NFS_V2=m \
    CONFIG_NFS_V3=m \
    CONFIG_NFS_V4=m \
    CONFIG_NFSD_V3=y \
    CONFIG_NFSD_V4=y \
"

BALENA_CONFIGS:append = " disable_apparmor"
BALENA_CONFIGS[disable_apparmor] = " \
    CONFIG_SECURITY_APPARMOR=n \
"

SCMVERSION="n"
