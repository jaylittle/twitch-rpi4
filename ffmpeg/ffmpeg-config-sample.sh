#!/bin/bash
#NOTE: Copy this to ffmpeg-config.sh and configure appropriately
#NOTE: These are your global settings

INRES="1280x720" # input resolution
OUTRES="1280x720" # output resolution
IN_FPS="30" # input FPS
OUT_FPS="30" # target FPS
GOP="60" # i-frame interval, should be double of FPS, 
GOPMIN="30" # min i-frame interval, should be equal to fps,
MIN_BR="3000k" # minimum bitrate (should be between 1000k - 3000k)
AVG_BR="3000k" # average bitrate (should be between 1000k - 3000k)
MAX_BR="3000k" # maximum bitrate (should be between 1000k - 3000k)
OUTAUDIO_FORMAT="aac" #Output audio format (aac for twitch)
OUTAUDIO_RATE="128k" #Output audio bitrate (128k for twitch)
OUTAUDIO_CHANNELS="2" #Number of audio channels in output (2 for stereo)
OUTVIDEO_CODEC="libx264" #Note: Use h264_omx for crappy hardware encode, libx264 for good software encode
OUTVIDEO_PRESET="ultrafast" #libx264 preset to use (ultrafast for twitch)
OUTVIDEO_TUNE="zerolatency" #libx264 tune setting to use (zerolatency for twitch)
OUTVIDEO_PIXFMT="yuv420p" #output picture format (yuv420p for twitch)
OUTSTREAM_CONTAINER="flv" #output video container (flv for twitch)
OUTSTREAM_THREADS="4" #number of threads to use for CPU based encoding like libx264
STREAM_KEY="1234567890" #Twitch stream key
STREAM_SERVER="live-atl" #Twitch stream server
STREAM_URL="rtmp://$STREAM_SERVER.twitch.tv/app/$STREAM_KEY"  #Twitch stream URL


