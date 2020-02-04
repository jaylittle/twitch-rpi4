#!/bin/bash
#NOTE: Copy this to stream-video-input-audio-inputs-config.sh and configure appropriately
#NOTE: The Following Settings are Specific to this Script

INVIDEO1_FORMAT="video4linux2"
INVIDEO1_DEVICE="/dev/video0"
INAUDIO1_FORMAT="pulse"
INAUDIO1_DEVICE="enc-output-pulse-audio-device-name"
INAUDIO1_VOLUME="0.40"
INAUDIO1_DELAY="00:00:00.250"
INAUDIO2_FORMAT="pulse"
INAUDIO2_DEVICE="mic-input-pulse-audio-device-name"
INAUDIO2_VOLUME="1.75"
INAUDIO2_DELAY="00:00:00.250"