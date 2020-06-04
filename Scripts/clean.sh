#!/bin/bash

for filename in /var/lib/motion/*; do
	echo "Removing $filename"
	sudo rm $filename
	echo "Removed $filename"
done
