#!/bin/bash
# 
# This file is part of RaumfeldAlarm.
# Learn more at: https://github.com/blaues0cke/RaumfeldAlarm
# 
# Author:  Thomas Kekeisen <pisleeptalk@tk.ca.kekeisen.it>
# License: This work is licensed under the Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License.
#          To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-sa/4.0/.
#
# Will connect room $2 to zone $1

. ./config.cfg

curl -i -s -k  -X 'GET' \
    -H 'User-Agent: RaumfeldControl/17539 CFNetwork/758.3.15 Darwin/15.4.0' \
    'http://'$raumfeld_base_url'/d7d5581b5be67548cda1a8bdb1fd246c0fe41c8de420759c8db8cbe75430242a/connectRoomToZone?zoneUDN='$2'&roomUDN='$1


    