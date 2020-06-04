#!/bin/sh

#Upload what exists in saved files
echo "Uploading  and cleaning saved files..."
sudo ./upload.sh


#Restart the service to start a new video
echo "Restarting service to start a new video..."
sudo service motion restart

