# rtsp_streamer
scripts to stream camera video over RTSP


### Install MediaMTX Server

**MediaMTX** is already included in this repository, so you don't need to install it separately. Just make sure you have all the necessary dependencies installed.

If you want to install it again,

```bash
rm mediamtx.yam rtsp-simple-server
./install_server.sh
```

### Run RTSP Server

```bash
./rtsp_server.sh
```

### Stream Camera

Set `RTSP URL` in [`rtsp_streamer.sh`](rtsp_streamer.sh) file and run the script:

```bash
./rtsp_streamer.sh
```


### Stream View:

```bash
./rtsp_viewer.sh
```