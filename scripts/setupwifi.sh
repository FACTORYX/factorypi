#!/bin/sh

if [ -e /boot/wifi.txt ]
then

	if [ /boot/wifi.txt -nt /etc/network/interfaces ]
	then
		ssid="$(dos2unix < /boot/wifi.txt | grep ssid)"
		psk="$(dos2unix < /boot/wifi.txt | grep psk)"

		cp /root/interfaces.tmpl /etc/network/interfaces	
		sed -i -e "s/{{wpa-ssid}}/$ssid/" /etc/network/interfaces 
		sed -i -e "s/{{wpa-psk}}/$psk/" /etc/network/interfaces 
	fi
fi