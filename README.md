# Raspberry Pi 4 Twitch Streaming Helper Scripts

## Disclaimer

Parts of these scripts were liberally borrowed from: https://wiki.archlinux.org/index.php/Streaming_to_twitch.tv

## Purpose

The purpose of these scripts is to make it easier for others to stream live video from their Raspberry Pi 4 to online services like Twitch.  As OBS is currently not an option on this platforms due to a lack of up to date Open GL support, people like myself who are interested in doing this need to resort to using command line tools like ffmpeg that can utilize every hardware optimization available on the RPI to get the job done.

## Status

This repo and this project are very new but these scripts have been successfully tested by streaming flawlessly synced video (720p 15fps) to twitch using a webcam video source and two audio sources as input.  Once I receive my capture card and work out the remaining kinks, these scripts will be used to produce my actual stream.

## Why

I am an ardent believer in the idea of doing more with less.  I love retro gaming.  I love the idea of streaming these games so that they will get more exposure.  So why not try and combine these things together?  Naturally streaming retro games to Twitch using only SBCs and low powered devices seemed challenging and rewarding enough to try.

## Requirements

* Raspberry Pi 4 with a minimum of 2 gigs of RAM
* Raspbian installed on your Micro SD card
* External USB 3.0 HDMI Capture Device / WebCam for Video
* Device upon which you game which has HDMI Output
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