LICENSE = "CLOSED"

inherit kernel-balena deploy

BALENA_CONFIGS:append = " nfsfs"
BALENA_CONFIGS[nfsfs] = " \
    CONFIG_NFS_FS=m \
    CONFIG_NFS_V2=m \
    CONFIG_NFS_V3=m \
    CONFIG_NFS_V4=m \
    CONFIG_NFSD_V3=y \
    CONFIG_NFSD_V4=y \
"

BALENA_CONFIGS:append = " enable_apparmor"
BALENA_CONFIGS[enable_apparmor] = " \
    CONFIG_SECURITY_APPARMOR=y \
"

SCMVERSION="n"
