docker run --rm -it --shm-size=512m -p 6901:6901 -v //mnt/c/Users/ernie/Documents/:/srv -e VNC_PW=password -e START_XFCE4=1 --gpus all cincibrainlab/signalflow-development:focal_kasm
