#!/bin/bash
#NOTE: Copy this to stream-video-input-audio-inputs-config.sh and configure appropriately
#NOTE: The Following Settings are Specific to this Script
#WARNING: Consider using ALSA device names gathered from arecord -L so that settings will survive a reboot as device numbers like hw:2,0 can and will change

INVIDEO1_FORMAT="video4linux2"
INVIDEO1_DEVICE="/dev/video0"
INAUDIO1_FORMAT="alsa" #Tempting though it may be, avoid pulse like the plague on an RPI
INAUDIO1_DEVICE="hw:CARD=Capture,DEV=0" #hw:2,0 = Capture Card Input
INAUDIO1_VOLUME="0.15"
INAUDIO1_DELAY="-00:00:00.250"
INAUDIO1_CHANNELS="2"
INAUDIO2_FORMAT="alsa"
INAUDIO2_DEVICE="hw:CARD=H,DEV=0" #hw:1,0 = Microphone Input
INAUDIO2_VOLUME="1.00"
INAUDIO2_DELAY="-00:00:00.250"
INAUDIO2_CHANNELS="1"
INAUDIO_FILTER="amix=inputs=2:duration=longest" #Feel free tweak this setting to whatever works for you using docs @ https://ffmpeg.org/ffmpeg-filters.html#amix