#!/bin/bash

# ============================================================
# Author: WM Nipun Dhananjaya
# Date: 07.08.2025
# ============================================================

# 
if [ ! -f rtsp-simple-server ]; then
    wget https://github.com/bluenviron/mediamtx/releases/download/v1.13.1/mediamtx_v1.13.1_linux_amd64.tar.gz
    # mkdir -p server
    tar -xzf mediamtx_v1.13.1_linux_amd64.tar.gz 
    mv mediamtx rtsp-simple-server
    rm mediamtx_v1.13.1_linux_amd64.tar.gz
else
    echo "RTSP server already exists."
fi