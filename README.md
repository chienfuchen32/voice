# voice

source src/source.sh
# voice pitch change
sh recordChangeVoice.sh 10 500  
based on: [SoX](http://sox.sourceforge.net/)
# text to speech
sh alax2aiff.sh  
based on macOS command [say](https://developer.apple.com/legacy/library/documentation/Darwin/Reference/ManPages/man1/say.1.html)
