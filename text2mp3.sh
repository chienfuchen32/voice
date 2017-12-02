#!/bin/bash
FULLFILE=$1;
FILE="${FULLFILE%%.*}";
# Convert to an audio file at 310 words per minute. I personally select the UK's Serena as the Mac default voice 
echo "converting $FILE.txt to $FILE.aiff";
`say -f $FILE.txt -r 310 -o $FILE.aiff --progress`;
echo "conververting $FILE.aiff to $FILE.mp3";
`~/Applications/ffmpeg-3.4-macos64-static/bin/ffmpeg -i $FILE.aiff $FILE.mp3`;
# Change the MP3 ID3 for the Album
id3tag -A$FILE $FILE.mp3;
`rm $FILE.aiff`;
