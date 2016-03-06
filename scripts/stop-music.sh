#!/bin/bash
# 
# This file is part of RaumfeldAlarm.
# Learn more at: https://github.com/blaues0cke/RaumfeldAlarm
# 
# Author:  Thomas Kekeisen <pisleeptalk@tk.ca.kekeisen.it>
# License: This work is licensed under the Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License.
#          To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-sa/4.0/.
#
# Will pause the music in all rooms

. /usr/raumfeld/config.cfg

curl -i -s -k  -X 'POST' \
    -H 'Content-Type: text/xml; charset="utf-8"' -H 'SOAPAction: "urn:schemas-upnp-org:service:AVTransport:1#Pause"' \
    --data-binary $'<?xml version=\"1.0\"?><s:Envelope xmlns:s=\"http://schemas.xmlsoap.org/soap/envelope/\" s:encodingStyle=\"http://schemas.xmlsoap.org/soap/encoding/\"><s:Body><u:Pause xmlns:u=\"urn:schemas-upnp-org:service:AVTransport:1\"><InstanceID>0</InstanceID></u:Pause></s:Body></s:Envelope>' \
    'http://'$raumfeld_base_url'/TransportService/Control'