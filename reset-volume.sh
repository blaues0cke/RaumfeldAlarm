#!/bin/bash
# 
# This file is part of RaumfeldAlarm.
# Learn more at: https://github.com/blaues0cke/RaumfeldAlarm
# 
# Author:  Thomas Kekeisen <pisleeptalk@tk.ca.kekeisen.it>
# License: This work is licensed under the Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License.
#          To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-sa/4.0/.
#

initial_volume=45

bash /usr/raumfeld/scripts/change-room-volume-to.sh uuid:545683de-6070-4fb2-b178-cede3221ce45 $initial_volume # Bathroom
bash /usr/raumfeld/scripts/change-room-volume-to.sh uuid:009bf27c-2027-4d76-b42b-924995495181 $initial_volume # Kitchen
bash /usr/raumfeld/scripts/change-room-volume-to.sh uuid:26e194ea-b46e-4b49-b4f1-e39792cf4a5b $initial_volume # Fitness room
bash /usr/raumfeld/scripts/change-room-volume-to.sh uuid:27f5f37e-4eaa-4b7a-914f-73bd11d32788 $initial_volume # Sleeping room
bash /usr/raumfeld/scripts/change-room-volume-to.sh uuid:6e297218-3c26-461d-a7b8-4a01be957e8d $initial_volume # Eating room
bash /usr/raumfeld/scripts/change-room-volume-to.sh uuid:a4bf67ba-1d5e-4c93-a9f2-60ddd4a959e4 $initial_volume # Living room