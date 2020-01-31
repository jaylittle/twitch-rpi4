#!/bin/bash
#Note: Copy this to ffmpeg-config.sh and configure appropriately
#Note: These are your global settings

INRES="1280x720" # input resolution
OUTRES="1280x720" # output resolution
FPS="30" # target FPS
GOP="60" # i-frame interval, should be double of FPS, 
GOPMIN="30" # min i-frame interval, should be equal to fps,
CBR="3000k" # constant bitrate (should be between 1000k - 3000k)
OUTAUDIO_FORMAT="aac"
OUTAUDIO_RATE="44100"
OUTAUDIO_CHANNELS="2"
OUTVIDEO_FORMAT="libx264"
OUTVIDEO_QUALITY="ultrafast"
OUTVIDEO_PIXFMT="yuv420p"
OUTSTREAM_CONTAINER="flv"
STREAM_KEY="1234567890"
STREAM_SERVER="live-atl"
STREAM_URL="rtmp://$STREAM_SERVER.twitch.tv/app/$STREAM_KEY"


