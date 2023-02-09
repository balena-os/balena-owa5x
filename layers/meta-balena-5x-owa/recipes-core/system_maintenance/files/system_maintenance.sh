#!/bin/bash
#Script to perform some basic maintenance actions. This is the version adapted to BalenaOS 
#where no hw.json is neither created nor generated.
count=1

#hwfile_create.sh
#hwvar_create.sh
#uboot_check.sh
while [ $count -le 12 ]; do
   if [ -f '/var/lock/owaapi.lck' ]; then
      sleep 1
      count=$((count+1))
   else
      count=13
   fi
done
hwclktosys

#if [ -f '/etc/u-boot-version' ]; then
#   rm /etc/u-boot-version
#fi
#fw_printenv ver | sed "s,[^0-9]*,," | cut -d"=" -f1 >> /etc/u-boot-version

OWASYS_SN_FILE="/mnt/state/owasys-sn"
OWASYS_SN=$(echo "get sn
exit" | /bin/owasys_test_owa5x | grep "number" | cut -d " " -f 4)

if [ -f '$OWASYS_SN_FILE' ];
then
   echo "OWASYS_SYSTEM_MAINTENANCE: Updating owasys-sn..."
   echo "$OWASYS_SN" > $OWASYS_SN_FILE
else
   touch $OWASYS_SN_FILE
   echo "$OWASYS_SN" > $OWASYS_SN_FILE
   echo "OWASYS_SYSTEM_MAINTENANCE: owasys-sn file not found, created."
fi

exit 0