#!/bin/bash
#NOTE: Copy this to stream-video-input-audio-inputs-config.sh and configure appropriately
#NOTE: The Following Settings are Specific to this Script

INVIDEO1_FORMAT="video4linux2"
INVIDEO1_DEVICE="/dev/video0"
INAUDIO1_FORMAT="alsa"
INAUDIO1_DEVICE="hw:2,0"
INAUDIO1_VOLUME="0.04"
INAUDIO1_DELAY="-00:00:00.250"
INAUDIO1_CHANNELS="2"
INAUDIO2_FORMAT="alsa"
INAUDIO2_DEVICE="hw:1,0"
INAUDIO2_VOLUME="1.00"
INAUDIO2_DELAY="-00:00:00.250"
INAUDIO2_CHANNELS="1"