# 
# This file is part of RaumfeldAlarm.
# Learn more at: https://github.com/blaues0cke/RaumfeldAlarm
# 
# Author:  Thomas Kekeisen <pisleeptalk@tk.ca.kekeisen.it>
# License: This work is licensed under the Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License.
#          To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-sa/4.0/.
#
# Will start playing jahfari on all rooms

. config.cfg

curl -i -s -k  -X 'POST' \
    -H 'Content-Type: text/xml; charset="utf-8"' -H 'SOAPAction: "urn:schemas-upnp-org:service:AVTransport:1#SetAVTransportURI"' \
    --data-binary $'<?xml version=\"1.0\"?><s:Envelope xmlns:s=\"http://schemas.xmlsoap.org/soap/envelope/\" s:encodingStyle=\"http://schemas.xmlsoap.org/soap/encoding/\"><s:Body><u:SetAVTransportURI xmlns:u=\"urn:schemas-upnp-org:service:AVTransport:1\"><CurrentURIMetaData>&lt;DIDL-Lite xmlns=&quot;urn:schemas-upnp-org:metadata-1-0/DIDL-Lite/&quot; xmlns:dc=&quot;http://purl.org/dc/elements/1.1/&quot; xmlns:dlna=&quot;urn:schemas-dlna-org:metadata-1-0/&quot; xmlns:upnp=&quot;urn:schemas-upnp-org:metadata-1-0/upnp/&quot; xmlns:raumfeld=&quot;urn:schemas-raumfeld-com:meta-data/raumfeld&quot;&gt;&lt;item refID=&quot;0/RadioTime/Search/s-s100890&quot; parentID=&quot;0/Favorites/MyFavorites&quot; id=&quot;0/Favorites/MyFavorites/37319&quot; restricted=&quot;1&quot;&gt;&lt;upnp:albumArtURI&gt;http://d1i6vahw24eb07.cloudfront.net/s100890q.png&lt;/upnp:albumArtURI&gt;&lt;upnp:class&gt;object.item.audioItem.audioBroadcast.radio&lt;/upnp:class&gt;&lt;raumfeld:section&gt;RadioTime&lt;/raumfeld:section&gt;&lt;raumfeld:name&gt;Station&lt;/raumfeld:name&gt;&lt;raumfeld:ebrowse&gt;http://opml.radiotime.com/Tune.ashx?partnerId=7aJ9pvV5&amp;amp;formats=wma%2Cmp3%2Cogg&amp;amp;serial=00%3A0d%3Ab9%3A24%3A50%3A14&amp;amp;id=s100890&amp;amp;c=ebrowse&lt;/raumfeld:ebrowse&gt;&lt;dc:title&gt;JAHFARI&lt;/dc:title&gt;&lt;raumfeld:durability&gt;108&lt;/raumfeld:durability&gt;&lt;/item&gt;&lt;/DIDL-Lite&gt;</CurrentURIMetaData><InstanceID>0</InstanceID><CurrentURI>dlna-playsingle://uuid%3A2a7d2daf-bc73-45f0-8005-e96f56d3cef2?sid=urn%3Aupnp-org%3AserviceId%3AContentDirectory&amp;iid=0%2FFavorites%2FMyFavorites%2F37319</CurrentURI></u:SetAVTransportURI></s:Body></s:Envelope>' \
    'http://'$raumfeld_base_url'/TransportService/Control'