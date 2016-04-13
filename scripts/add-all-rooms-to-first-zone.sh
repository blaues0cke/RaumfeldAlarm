#!/bin/bash
# 
# This file is part of RaumfeldAlarm.
# Learn more at: https://github.com/blaues0cke/RaumfeldAlarm
# 
# Author:  Thomas Kekeisen <pisleeptalk@tk.ca.kekeisen.it>
# License: This work is licensed under the Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License.
#          To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-sa/4.0/.
#
# Adds all rooms to the first zone id found

. ./config.cfg

zoneId=$(sh scripts/get-first-zone.sh)

echo "First zone id is: ${zoneId}"

sh scripts/get-all-rooms.sh | \
    while read roomId; do \
		echo "Adding room ${roomId} to zone ${zoneId}"; \

		curl -i -k  -X 'GET' \
    		-H 'User-Agent: RaumfeldControl/17539 CFNetwork/758.3.15 Darwin/15.4.0' \
    		'http://'$raumfeld_base_url_2'/_/connectRoomToZone?zoneUDN='$zoneId'&roomUDN='$x
    done

echo "Done"