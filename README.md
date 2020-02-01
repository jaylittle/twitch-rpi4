# Initial README for RPI4 Twitch Streaming Script project

## Disclaimer

Parts of these scripts were liberally borrowed from: https://wiki.archlinux.org/index.php/Streaming_to_twitch.tv

## Requirements

* Raspberry Pi 4 with a minimum of 2 gigs of RAM
* Raspbian installed on your Micro SD card
* External USB 3.0 HDMI Capture Device / WebCam for Video
* Microphone for Voice Audio Overlay
* TODO: List Raspbian Package Dependencies (ffmpeg, libx264, etc)

## How to use

1. Clone this repo into your Raspbian install with git
2. Switch to repo directory
3. Copy ffmpeg-config-sample.sh to ffmpeg-config.sh
4. Change settings in ffmpeg-config.sh to match your preferences
5. Pick a stream script (currently there is only one)
6. Copy stream script config sample file to same file without -sample on the end
7. Change settings in stream script config.sh to match your preferences
8. Execute the stream script in the terminal