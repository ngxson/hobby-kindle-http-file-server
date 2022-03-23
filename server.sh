#!/bin/sh

rm /mnt/us/extensions/filebrowser/log.txt
touch /mnt/us/extensions/filebrowser/log.txt

(/mnt/us/extensions/filebrowser/fileserver -a 0.0.0.0 -p 80 -r "/mnt/us" -l "/mnt/us/extensions/filebrowser/log.txt" 1> /dev/null 2> /dev/null)&
