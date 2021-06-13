#!/bin/bash
#mkdir -p /var/spool/lpd/dcpt425w
#mkdir -p /opt/
#mkdir -p /var/spool/lpd/dcpt425w
#dpkg  -i  --force-all  /root/dcpt425wpdrv-3.5.0-1.i386.deb

inotifywait -m -e close_write,moved_to,create /etc/cups | 
while read -r directory events filename; do
	if [ "$filename" = "printers.conf" ]; then
		rm -rf /services/AirPrint-*.service
		/root/airprint-generate.py -d /services
		cp /etc/cups/printers.conf /config/printers.conf
	fi
done
