# 
# This file is part of RaumfeldAlarm.
# Learn more at: https://github.com/blaues0cke/RaumfeldAlarm
# 
# Author:  Thomas Kekeisen <pisleeptalk@tk.ca.kekeisen.it>
# License: This work is licensed under the Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License.
#          To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-sa/4.0/.
#
# Will increase the volume of a rooms ($1) by $2

. config.cfg

curl -i -s -k  -X 'POST' \
    -H 'Content-Type: text/xml; charset="utf-8"' -H 'SOAPAction: "urn:schemas-upnp-org:service:RenderingControl:1#SetRoomVolume"' \
    --data-binary $'<?xml version=\"1.0\"?><s:Envelope xmlns:s=\"http://schemas.xmlsoap.org/soap/envelope/\" s:encodingStyle=\"http://schemas.xmlsoap.org/soap/encoding/\"><s:Body><u:SetRoomVolume xmlns:u=\"urn:schemas-upnp-org:service:RenderingControl:1\"><Room>'$1'</Room><InstanceID>0</InstanceID><DesiredVolume>'$2'</DesiredVolume></u:SetRoomVolume></s:Body></s:Envelope>' \
    'http://'$raumfeld_base_url'/RenderingService/Control'