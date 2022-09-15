#!/bin/bash

# Welcome
echo 'Server start'

cd /root/podcast

# Get App Dependencies
flutter pub get

# # Build the app for the web
# flutter build web

# # Set the port
 PORT=4040

# # Kill anything that is already running on that port by ash
 echo 'Cleaning our port' $PORT '...'
 fuser -k 4040/tcp

# # Change directories to the release folder
 cd build/web/
# pip install

# # Start the server
 echo 'Starting server on port by ' $PORT '...'
 python3 -m http.server $PORT

# Exit
echo 'Server stopped'
