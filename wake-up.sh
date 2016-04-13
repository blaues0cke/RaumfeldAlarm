#!/bin/bash
# 
# This file is part of RaumfeldAlarm.
# Learn more at: https://github.com/blaues0cke/RaumfeldAlarm
# 
# Author:  Thomas Kekeisen <pisleeptalk@tk.ca.kekeisen.it>
# License: This work is licensed under the Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License.
#          To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-sa/4.0/.
#

# Put your alarm script here

bash ./scripts/change-volume-by.sh -500
bash ./scripts/change-volume-of-all-rooms-to.sh 0
bash ./scripts/add-all-rooms-to-first-zone.sh
bash ./scripts/change-volume-of-all-rooms-to.sh 0
bash ./scripts/stop-music.sh

sleep 1

bash ./scripts/tuneup-play-jahfari.sh

echo "Waiting 40 seconds..."

sleep 40

echo "Done waiting 40 seconds..."

# Thanks to
# => http://stackoverflow.com/questions/169511/how-do-i-iterate-over-a-range-of-numbers-defined-by-variables-in-bash
# 
# Will increase the volume every 12 seconds by 1%, so the volume will be by 50% after 10 minutes
for i in $(seq 1 50);
do
	echo "Increasing volume by 1, volume should now be ${i}..."

	bash ./scripts/change-volume-by.sh 1

	sleep 12
done