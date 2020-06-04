#!/bin/sh

#Stopping the service
echo "Stopping camera feed and saving footage..."
sudo service motion stop
echo ""

#Upload what exists in saved files
echo "Uploading new videos..."
/home/pi/raspberry-surveillance/Scripts/upload.sh
echo ""

#Clean the local loot folder
echo "Cleaning /var/lib/motion/..."
/home/pi/raspberry-surveillance/Scripts/clean.sh
echo ""

#Restart the service to start a new video
echo "Restarting service to start a new video..."
sudo service motion start
