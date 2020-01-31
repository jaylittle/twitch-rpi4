#!/bin/bash
#This file should NOT be edited

source ./stream-video-input-audio-inputs-config.sh

ffmpeg -v verbose -f $INVIDEO1_FORMAT -vcodec $INVIDEO1_CODEC -framerate $FPS -video_size $INRES -i $INVIDEO1_DEVICE -f $INAUDIO1_FORMAT -i $INAUDIO1_DEVICE -f $INAUDIO2_FORMAT -i $INAUDIO2_DEVICE -c:v $OUTVIDEO_FORMAT -g $GOP -keyint_min $GOPMIN -b:v $CBR -minrate $CBR -maxrate $CBR -preset $OUTVIDEO_QUALITY -pix_fmt $OUTVIDEO_PIXFMT -filter_complex "[1:0]volume=$INAUDIO1_VOLUME[a];[2:0]volume=$INAUDIO1_VOLUME[b];[a][b]amix=inputs=2:duration=longest" -tune film -c:a $OUTAUDIO_FORMAT -f $OUTSTREAM_CONTAINER -ac $OUTAUDIO_CHANNELS -ar $OUTAUDIO_RATE -bufsize $CBR "$STREAM_URL"