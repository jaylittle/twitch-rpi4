#!/bin/bash
#This file should NOT be edited

source ./ffmpeg-config.sh
source ./stream-video-input-audio-inputs-config.sh

if [ -n "$1" ]
then
    STREAM_URL="$1"
fi
ffmpeg -v verbose -f $INVIDEO1_FORMAT -framerate $FPS -video_size $INRES -i $INVIDEO1_DEVICE -itsoffset $INAUDIO1_DELAY -f $INAUDIO1_FORMAT -i $INAUDIO1_DEVICE -itsoffset $INAUDIO2_DELAY -f $INAUDIO2_FORMAT -i $INAUDIO2_DEVICE -vcodec $OUTVIDEO_CODEC -g $GOP -keyint_min $GOPMIN -b:v $CBR -minrate $CBR -maxrate $CBR -preset $OUTVIDEO_QUALITY -pix_fmt $OUTVIDEO_PIXFMT -s $OUTRES -filter_complex "[1:0]volume=$INAUDIO1_VOLUME[a];[2:0]volume=$INAUDIO2_VOLUME[b];[a][b]amix=inputs=2:duration=longest" -tune film -c:a $OUTAUDIO_FORMAT -f $OUTSTREAM_CONTAINER -ac $OUTAUDIO_CHANNELS -ar $OUTAUDIO_RATE -threads $OUTSTREAM_THREADS -bufsize $CBR -r $FPS -vsync 1 -async 1 "$STREAM_URL"