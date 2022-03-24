#!/bin/sh

# kill the server if it is running
for pid in $(ps -ef | grep "fileserver" | awk '{print $2}'); do kill -9 $pid; done

# start the server
/usr/sbin/eips 11 32 "Starting..."
iptables -I INPUT -p tcp --dport 80 -j ACCEPT
sleep 1

chmod a+x /mnt/us/extensions/filebrowser/fileserver
chmod a+x /mnt/us/extensions/filebrowser/server.sh
/mnt/us/extensions/filebrowser/server.sh

/usr/sbin/eips 11 33 "HTTP Server started"
