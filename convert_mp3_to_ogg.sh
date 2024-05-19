#!/bin/bash

# Loop through all .mp3 files in the current directory
for file in *.mp3; do
  # Get the base name of the file without the extension
  base_name="${file%.mp3}"
  # Convert the file using FFmpeg
  ffmpeg -i "$file" -c:a libvorbis -q:a 4 -ar 22050 "${base_name}.ogg"
done