

curl -i -s -k  -X 'GET' \
    -H 'User-Agent: RaumfeldControl/17539 CFNetwork/758.3.15 Darwin/15.4.0' \
    'http://192.168.0.10:47365/_/getZones' | \
    while read x; do \
    	roomId=$(echo $x $x | sed -e "s/.*udn='\(.*\)' c.*/\1/g"); \
    	roomIdLength=${#roomId}; \
    	if [ "${roomIdLength}" -eq "41" ]; then \
    		echo "${roomId}"
		fi \
    	\
    done



    
exit

curl -i -s -k  -X 'GET' \
    -H 'User-Agent: RaumfeldControl/17539 CFNetwork/758.3.15 Darwin/15.4.0' \
    'http://192.168.0.10:47365/_/listDevices'





