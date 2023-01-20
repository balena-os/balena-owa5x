#!/usr/bin/env bash
#===============================================================================
#
#          FILE:  bindmount_pollux.sh
#
#         USAGE:  bindmount_pollux.sh
#         DEBUG:  TRACE=1 ./bindmount_pollux.sh
#
#   DESCRIPTION: External script to bindmount /etc/pollux in /mnt/state/root-overlay/etc/pollux so polluxgps can perform rw operations.
#
#       OPTIONS:  ---
#  REQUIREMENTS:  ---
#          BUGS:  ---
#        AUTHOR:  owzagj
#       COMPANY:  Owasys SL
#       VERSION:  0.0.1
#       CREATED:  2023-01-20
#===============================================================================

set -o errexit
set -o nounset
set -o pipefail
if [[ "${TRACE-0}" == "1" ]]; then
    set -o xtrace
fi

if [[ "${1-}" =~ ^-*h(elp)?$ ]]; then
    echo 'Usage: ./script.sh arg-one arg-two

This script bindmount /etc/pollux in /mnt/state/root-overlay/etc/pollux so polluxgps can perform rw operations.

'
    exit
fi

cd "$(dirname "$0")"

main() {

    DIR=/mnt/state/root-overlay/etc/pollux/
    
    if [ ! -d "$DIR" ];
    then
        echo "Creating target directory on /mnt/state/root-overlay"
        /bin/mkdir /mnt/state/root-overlay/etc/pollux/ 

        echo "Copy saving target files"
        /bin/cp /etc/pollux/* /mnt/state/root-overlay/etc/pollux/
    fi

    echo "Bindmounting"
    /usr/bin/bindmount --target /etc/pollux --bind-root /mnt/state/root-overlay --command mount

}

main "$@"
