#/bin/bash

# Capture macos input and stream to rtsp server
ffmpeg -f avfoundation -i ":1" -acodec libmp3lame -ab 32k -ac 1 -f rtsp -rtsp_transport tcp rtsp://localhost:8554/mystream