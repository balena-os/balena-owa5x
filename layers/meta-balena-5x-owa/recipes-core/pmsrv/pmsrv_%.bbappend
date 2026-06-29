FILESEXTRAPATHS:append := ":${THISDIR}/files"

SRC_URI:append = " file://do_not_set_hostname.patch"


do_install:append() {

    rm ${D}${localstatedir}/lib/owasys/pmsrv/pmupdate.txt

}
