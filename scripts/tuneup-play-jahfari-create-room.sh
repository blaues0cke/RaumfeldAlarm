#!/bin/bash
# 
# This file is part of RaumfeldAlarm.
# Learn more at: https://github.com/blaues0cke/RaumfeldAlarm
# 
# Author:  Thomas Kekeisen <pisleeptalk@tk.ca.kekeisen.it>
# License: This work is licensed under the Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License.
#          To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-sa/4.0/.
#
# Will start playing jahfari on all rooms

. /usr/raumfeld/config.cfg

curl -i -s -k  -X 'POST' \
    -H 'Content-Type: text/xml; charset="utf-8"' -H 'SOAPAction: "urn:schemas-upnp-org:service:AVTransport:1#SetAVTransportURI"' -H 'User-Agent: RaumfeldControl/17539 RaumfeldProtocol/423 Build/feature-spotifymultiroom.17539 iPhone OS/9.3' \
    --data-binary $'<?xml version=\"1.0\"?><s:Envelope xmlns:s=\"http://schemas.xmlsoap.org/soap/envelope/\" s:encodingStyle=\"http://schemas.xmlsoap.org/soap/encoding/\"><s:Body><u:SetAVTransportURI xmlns:u=\"urn:schemas-upnp-org:service:AVTransport:1\"><CurrentURIMetaData>&lt;DIDL-Lite xmlns=&quot;urn:schemas-upnp-org:metadata-1-0/DIDL-Lite/&quot; xmlns:dc=&quot;http://purl.org/dc/elements/1.1/&quot; xmlns:dlna=&quot;urn:schemas-dlna-org:metadata-1-0/&quot; xmlns:upnp=&quot;urn:schemas-upnp-org:metadata-1-0/upnp/&quot; xmlns:raumfeld=&quot;urn:schemas-raumfeld-com:meta-data/raumfeld&quot;&gt;&lt;item restricted=&quot;1&quot; id=&quot;0/RadioTime/Search/s-s100890&quot; parentID=&quot;0/RadioTime/Search&quot;&gt;&lt;dc:title&gt;JAHFARI&lt;/dc:title&gt;&lt;upnp:signalStrength&gt;94&lt;/upnp:signalStrength&gt;&lt;raumfeld:section&gt;RadioTime&lt;/raumfeld:section&gt;&lt;upnp:class&gt;object.item.audioItem.audioBroadcast.radio&lt;/upnp:class&gt;&lt;raumfeld:ebrowse&gt;http://opml.radiotime.com/Tune.ashx?partnerId=7aJ9pvV5&amp;amp;formats=wma%2Cmp3%2Cogg&amp;amp;serial=00%3A0d%3Ab9%3A24%3A50%3A14&amp;amp;id=s100890&amp;amp;c=ebrowse&lt;/raumfeld:ebrowse&gt;&lt;upnp:albumArtURI&gt;http://cdn-radiotime-logos.tunein.com/s100890q.png&lt;/upnp:albumArtURI&gt;&lt;raumfeld:name&gt;Station&lt;/raumfeld:name&gt;&lt;res protocolInfo=&quot;http-get:*:audio/x-mpegurl:*&quot;&gt;http://opml.radiotime.com/Tune.ashx?id=s100890&amp;amp;formats=wma,mp3,ogg&amp;amp;partnerId=7aJ9pvV5&amp;amp;serial=00:0d:b9:24:50:14&lt;/res&gt;&lt;raumfeld:durability&gt;110&lt;/raumfeld:durability&gt;&lt;/item&gt;&lt;/DIDL-Lite&gt;</CurrentURIMetaData><InstanceID>0</InstanceID><CurrentURI>http://opml.radiotime.com/Tune.ashx?id=s100890&amp;formats=wma,mp3,ogg&amp;partnerId=7aJ9pvV5&amp;serial=00:0d:b9:24:50:14</CurrentURI></u:SetAVTransportURI></s:Body></s:Envelope>' \
    'http://'$raumfeld_base_url'/TransportService/Control'