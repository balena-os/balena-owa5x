#!/bin/sh
#
# Copyright 2020 Balena Ltd.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

set -e

. /usr/libexec/os-helpers-logging
. /usr/libexec/os-helpers-time

RTC_DEVICE=/dev/rtc

# Don't bother updating or reporting errors for small differences.
TIME_DIFF_THRESHOLD=2

info "Setting system time from RTC."

if [ ! -e "$RTC_DEVICE" ]; then
        fail "RTC device ${RTC_DEVICE} not found."
fi

## OWASYS - PATCH
count=1

while [ $count -le 12 ]; do
   if [ -f '/var/lock/owaapi.lck' ]; then
      sleep 1
      count=$((count+1))
   else
      count=13
   fi
done

RTC_RAW_TIME=$(echo "get rtctime
exit" | /usr/bin/Test_owa5x | grep "Time:" )
RTC_RAW_TIME=$(echo ${RTC_RAW_TIME#Time:} )
RTC_RAW_TIME=$(echo ${RTC_RAW_TIME/Date:/} )
OWASYS_RTC_TIME=$(date -u "+%4Y%2m%2d%2H%2M%2S" -d "${RTC_RAW_TIME}")
RTC_TIME=$OWASYS_RTC_TIME
####
SYS_TIME=$(get_system_time_as_timestamp)

TIME_DIFF=$(get_abs_time_diff_from_timestamps "$SYS_TIME" "$RTC_TIME")

if [ "$SYS_TIME" -lt "$RTC_TIME" ]; then
        if [ "$TIME_DIFF" -gt "$TIME_DIFF_THRESHOLD" ]; then
                $(set_system_time_from_timestamp "$RTC_TIME")
                info "Old time: $(get_display_time_from_timestamp "$SYS_TIME")"
                info "New time: $(get_display_time_from_timestamp "$RTC_TIME")"
        else
                info "System time is already set."
        fi
else
        info "System time is already set."
        if [ "$TIME_DIFF" -gt "$TIME_DIFF_THRESHOLD" ]; then
                warn "RTC time is in the past."
                warn "Check RTC battery if this issue persists."
                warn "RTC time:    $(get_display_time_from_timestamp "$RTC_TIME")"
                warn "System time: $(get_display_time_from_timestamp "$SYS_TIME")"
        fi
fi