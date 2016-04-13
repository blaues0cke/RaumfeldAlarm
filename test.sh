
. config.cfg

zoneId=$(sh get-first-zone.sh)

sh scripts/get-all-rooms.sh | \
    while read x; do \

    		echo "$x"; \

    		curl -i -s -k  -X 'GET' \
    -H 'User-Agent: RaumfeldControl/17539 CFNetwork/758.3.15 Darwin/15.4.0' \
    'http://'$raumfeld_base_url_2'/_/connectRoomToZone?zoneUDN='$zoneId'&roomUDN='$x

		
    done



    
exit

curl -i -s -k  -X 'GET' \
    -H 'User-Agent: RaumfeldControl/17539 CFNetwork/758.3.15 Darwin/15.4.0' \
    'http://'$raumfeld_base_url_2'/_/connectRoomToZone?zoneUDN='$zoneId'&roomUDN='$x

curl -i -s -k  -X 'GET' \
    -H 'User-Agent: RaumfeldControl/17539 CFNetwork/758.3.15 Darwin/15.4.0' \
    'http://192.168.0.10:47365/_/listDevices'





