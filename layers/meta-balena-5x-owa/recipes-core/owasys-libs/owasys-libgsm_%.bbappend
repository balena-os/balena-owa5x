SYSTEMD_SERVICE:${PN} =""

do_install() {

    install -d ${D}${sbindir}
    install ${WORKDIR}/owasys-ring.sh ${D}${sbindir}

    # create the /lib/ folder in the rootfs with default permissions
    install -d ${D}${localstatedir}/lib/owasys/

    # install the application into the /lib/ folder with default permissions
    install -d ${D}${libdir}/owasys
    install ${WORKDIR}/libGSM_Module.so.1.2.2 ${D}${libdir}/owasys
    install ${WORKDIR}/libgsm.conf ${D}${localstatedir}/lib/owasys

    # create symbolic links from /usr/lib/owasys to /lib/
    install -d ${D}/${nonarch_base_libdir}
    ln -s -r ${D}/${libdir}/owasys/libGSM_Module.so.1.2.2 ${D}${nonarch_base_libdir}/libGSM_Module.so
    
    install -d ${D}${sysconfdir}
    install ${WORKDIR}/gsm.conf ${D}${sysconfdir}
    install ${WORKDIR}/audio.conf ${D}${sysconfdir}

    # install the link rename
    install -d ${D}${sysconfdir}/systemd/network
    install -d ${D}${sysconfdir}/systemd
}
