# SignalFlow-Preprocessing
## SignalFlow Docker Stacks

*SignalFlow-Preprocessing* is a ready-to-run workstation in your browser for Matlab-based EEG preprocessing pipelines. 

The Docker container contains key software: Matlab 2023a and open-source toolkits (i.e., EEGLAB). The container uses your own data directories and MATLAB license. Changes to the linked data directories stay persistent even after stopping the container. The container can be deployed on any number of workstations and the image is standardized to be fully functional.

The current images are built using advanced VNC software (Kasm workstation) and should be comparable to working on a local desktop PC. We have made two containers available based on Ubuntu 20.04 LTS - a CPU-only container and a larger CUDA GPU-enabled container. 


## Quick Start
Example:
* :cpu (CPU only)

``` 
docker run --rm -it --shm-size=512m -p 6901:6901 -v /path/to/local/storage/:/srv \
       -e  VNC_PW=password -e START_XFCE4=1 cincibrainlab/signalflow-development:focal
```
* :gpu (Nvidia CUDA GPU support)

```
docker run --rm -it --shm-size=512m -p 6901:6901 -v /path/to/local/storage/:/srv \ 
       -e VNC_PW=password -e START_XFCE4=1 cincibrainlab/signalflow-development:jammy
```

DockerHub: https://hub.docker.com/repository/docker/cincibrainlab/signalflow-development/general


## Features
Provides a full Linux desktop environment with Xfce, a scientific computing environment with Matlab and R, document authoring tools like Quarto, and developer tools - preconfigured for convenience on an academic research computing platform.

- Base image: linuxserver/baseimage-kasmvnc:debianbookworm 
- Installs packages: 
  - Xfce desktop environment, Chromimum, Matlab, R, RStudio, Quarto, Pandoc, VSCode, GitHub Desktop, GitKraken
- Configures Matlab R2023a with key toolboxes
- Installs R 4.3 and key R packages like tidyverse, pacman, quarto
- Configures locale, installs texlive for PDF rendering
- Installs developer tools like VSCode, GitHub Desktop, GitKraken
- Installs helpful packages like imagemagick, inkscape, zip/unzip
- Configures `.desktop` files for no-sandbox mode for security
- Creates `matlab` user with sudo permissions for convenience
- Exposes port 3000 and sets up volume at `/config`

*Matlab Toolboxes installed suitable for HAPPE, MADE pipelines*
- Parallel Computing Toolbox
- Image Processing Toolbox  
- Signal Processing Toolbox
- Image Processing Toolbox
- Optimization Toolbox
- Statistics and Machine Learning Toolbox
- Wavelet Toolbox

## License

This project is licensed under the terms of the MIT License.

## Maintainer
This project is maintained by Ernest Pedapati (ernest.pedapati@cchmc.org).
