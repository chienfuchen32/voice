ffmpeg -i $outputpath/input.mp3 -acodec pcm_u8 -ar 22050 $outputpath/input.wav
play $outputpath/input.wav pitch -450
