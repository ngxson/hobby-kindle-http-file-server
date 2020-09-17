#!/bin/sh

myip="$(ifconfig | grep -A 1 'wlan0' | tail -1 | cut -d ':' -f 2 | cut -d ' ' -f 1)"

echo ""
echo ""

iptables -I INPUT -p tcp --dport 80 -j ACCEPT

if [ -z "$myip" ]
then
  echo "Cannot find your IP. Please make sure that you are connecting to a Wifi network"
  echo ""
else
  echo "Connect your PC/Mobile to wifi and access to:"
  echo ""
  echo "              http://$myip"
  echo ""
  (sleep 1; echo ""; echo ""; /mnt/us/extensions/filebrowser/filebrowser -a 0.0.0.0 -p 80 -r "/mnt/us") &
fi
read -n 1 -s -r -p "Press any key to stop"
