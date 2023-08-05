docker build -t cincibrainlab/signalflow-development:bookworm -f Dockerfile-bookworm .
docker run --rm -it --shm-size=512m -p 6902:6901 -e VNC_PW=password -e START_XFCE4=1 cincibrainlab/signalflow-development:bookworm
