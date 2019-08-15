#!/bin/bash -eu

ap_connections=$(hostapd_cli all_sta | wc -l)

if [ "$ap_connections" > 1 ]
then
	log "At least one wifi client."
	exit 0
	return
fi
log "No wifi clients."
exit 1
