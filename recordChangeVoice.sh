t=${1}
p=${2}
sox -b 32 -e unsigned-integer -r 96k -c 2 -d --clobber --buffer $((96000*2*10)) $outputpath/recording.wav trim 0 $t
play $outputpath/recording.wav pitch $p