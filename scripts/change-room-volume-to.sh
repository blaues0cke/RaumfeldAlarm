curl -i -s -k  -X 'POST' \
    -H 'Content-Type: text/xml; charset="utf-8"' -H 'SOAPAction: "urn:schemas-upnp-org:service:RenderingControl:1#SetRoomVolume"' -H 'User-Agent: RaumfeldControl/17348 RaumfeldProtocol/167 Build/3.2 iPhone OS/9.2.1' \
    --data-binary $'<?xml version=\"1.0\"?><s:Envelope xmlns:s=\"http://schemas.xmlsoap.org/soap/envelope/\" s:encodingStyle=\"http://schemas.xmlsoap.org/soap/encoding/\"><s:Body><u:SetRoomVolume xmlns:u=\"urn:schemas-upnp-org:service:RenderingControl:1\"><Room>'$1'</Room><InstanceID>0</InstanceID><DesiredVolume>'$2'</DesiredVolume></u:SetRoomVolume></s:Body></s:Envelope>' \
    'http://192.168.0.10:38426/RenderingService/Control'
