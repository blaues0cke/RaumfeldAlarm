#!/bin/bash
# 
# This file is part of RaumfeldAlarm.
# Learn more at: https://github.com/blaues0cke/RaumfeldAlarm
# 
# Author:  Thomas Kekeisen <pisleeptalk@tk.ca.kekeisen.it>
# License: This work is licensed under the Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License.
#          To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-sa/4.0/.
#
# Sets the volume ($1) of all rooms found

. ./config.cfg

sh scripts/get-all-rooms.sh | 			  			        \
    while read roomId; do 								    \
		echo "Setting volume of ${roomId} to zone $1";      \
														    \
		bash ./scripts/change-room-volume-to.sh $roomId $1; \
    done

echo "Done"