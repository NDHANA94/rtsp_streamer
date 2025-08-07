#!/bin/bash


# ============================================================
# Author: WM Nipun Dhananjaya
# Date: 07.08.2025
# ============================================================



RTSP_URL="rtsp://10.1.17.121:8554/test"

ffplay -fflags nobuffer -flags low_delay -framedrop -rtsp_transport tcp -probesize 32 -analyzeduration 0 "$RTSP_URL"