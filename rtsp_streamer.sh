#!/bin/bash

# ============================================================
# Author: WM Nipun Dhananjaya
# Date: 07.08.2025
# ============================================================



# Stream camera to RTSP using FFmpeg

# Set your RTSP URL (change as needed)
RTSP_URL="rtsp://10.1.17.121:8554/mystream"

# Start streaming from /dev/video0 (default webcam)
ffmpeg -fflags nobuffer -flags low_delay -strict experimental \
-vaapi_device /dev/dri/renderD128 \
-f v4l2 -i /dev/video0 -vf 'format=nv12,hwupload' -vcodec h264_vaapi -g 30 \
-f rtsp -rtsp_transport tcp "$RTSP_URL"