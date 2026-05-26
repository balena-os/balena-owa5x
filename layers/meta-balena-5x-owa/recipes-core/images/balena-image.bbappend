include balena-image.inc

remove_files_from_fingerprint () {
    # We need to exclude "pmupdate.txt" as it is only a flag-file
    # that indicates the need to flash the onboard uC with new FW.
    # This process is needed after every FW update, whether it is 
    # an OTA update or an USB/uSD reflashing. After the reflashing
    # the pmupdate is removed by pmsrv service.
    
    grep -v '^d41d8cd98f00b204e9800998ecf8427e  /var/lib/owasys/pmsrv/pmupdate.txt$' ${IMAGE_ROOTFS}/${BALENA_FINGERPRINT_FILENAME}.${BALENA_FINGERPRINT_EXT} \
     > md5sum.tmp && mv md5sum.tmp ${IMAGE_ROOTFS}/${BALENA_FINGERPRINT_FILENAME}.${BALENA_FINGERPRINT_EXT}
}

IMAGE_POSTPROCESS_COMMAND += " remove_files_from_fingerprint ; "
