do_configure[nostamp] = "1"
do_compile[nostamp] = "1"

FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

SRC_URI_append_owa5x = " file://0001-Downgraded-ddr-trainning-files-version.-In-BalenaOS-.patch \
"