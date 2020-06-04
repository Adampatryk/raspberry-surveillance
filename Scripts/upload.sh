#!/bin/sh

#Uploading to online Loot Google Drive folder
echo "Uploading /var/lib/motion/* to Google Drive folder ID:1L-ftfrbJt2QeO0JmraUJ6aEU00vDbfvn using Key File:sa.json"
gdrive --service-account sa.json upload -p 1L-ftfrbJt2QeO0JmraUJ6aEU00vDbfvn /var/lib/motion/*

#Clean up the uploaded files
echo "Emptying /var/lib/motion/"
sudo rm /var/lib/motion/*

