#!/bin/bash
# 
# This file is part of RaumfeldAlarm.
# Learn more at: https://github.com/blaues0cke/RaumfeldAlarm
# 
# Author:  Thomas Kekeisen <pisleeptalk@tk.ca.kekeisen.it>
# License: This work is licensed under the Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License.
#          To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-sa/4.0/.
#
# Will return a list of all available room ids

. ./config.cfg

curl -i -s -k  -X 'GET' 													\
    -H 'User-Agent: RaumfeldControl/17539 CFNetwork/758.3.15 Darwin/15.4.0' \
    'http://'$raumfeld_base_url_2'/_/getZones' | 							\
    while read x; do 														\
    	roomId=$(echo $x $x | sed -e "s/.*room udn='\(.*\)' c.*/\1/g");		\
    	roomIdLength=${#roomId}; 											\
    	if [ "${roomIdLength}" -eq "41" ]; then 							\
#    		echo "${roomId}" | sed 's/:/%3A/g';		   						\
    		echo "${roomId}";		   				      					\
		fi 																	\
    done