# SignalFlow Development
## SignalFlow Docker Stacks

This stack uses a newer base operating system (Debian 12) with a more advanced VNC platform (KASM). This container attempts to (but not yet successful) have successful interactive Jupyter notebook MNE plots.

![dev-launcher ](signalflow-dev-screenshot.png)


## Quick Start
Example:
```
docker run -e JUPYTER_TOKEN="welcome" -p 3000:3000 cincibrainlab/signalflow-development
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
