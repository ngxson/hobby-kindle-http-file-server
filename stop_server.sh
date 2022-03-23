#!/bin/sh

for pid in $(ps -ef | grep "fileserver" | awk '{print $2}'); do kill -9 $pid; done

/usr/sbin/eips 11 32 "HTTP Server stopped"
