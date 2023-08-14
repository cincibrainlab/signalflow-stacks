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
       -e   cincibrainlab/signalflow-preprocessing:cpu
```
* :gpu (Nvidia CUDA GPU support)

```
docker run --rm -it --shm-size=512m -p 6901:6901 -v /path/to/local/storage/:/srv --gpus:all \ 
       -e MLM_LICENSE cincibrainlab/signalflow-preprocessing:gpu
```

DockerHub: https://hub.docker.com/repository/docker/cincibrainlab/signalflow-preprocessing/general


## Features
Provides a full Linux desktop environment with Xfce, a scientific computing environment with Matlab preconfigured for EEG preprocessing.

*Matlab Toolboxes installed suitable for HAPPE, MADE pipelines*
- Parallel Computing Toolbox
- Image Processing Toolbox  
- Signal Processing Toolbox
- Image Processing Toolbox
- Optimization Toolbox
- Statistics and Machine Learning Toolbox
- Wavelet Toolbox
- Curve Fitting Toolbox

* local use is added to the SUDO group. If container is modified, you can persist changes by using `docker commit` and using the saved image on subsequent `docker run` or `docker-compose` commands.

## Repository Files

* build-sfpreprocessing_*.sh: build command to create local container images for cpu and gpu versions
* Dockerfile-signalflow-preprocessing-cpu: Source for CPU image
* Dockerfile-signalflow-preprocessing-gpu: Source for GPU image
* install_eeg_toolkits.sh: shell script for installing EEG toolkits
* env.template: environmental variable template (rename to .env for production)
* src/: KASM provided additional software setup scripts

# Build instructions

1. Clone repository by selecting the signalflow-preprocessing branch

```bash
git clone -b signalflow-preprocessing https://github.com/cincibrainlab/signalflow-stacks.git
```

2. enter the build directory

```bash
cd build
```

3. Modify either the Docker-signalflow-preprocessing-* Dockerfiles directory or modify the post-processing installs cript install_eeg_toolkits.sh. 

4. Run a docker build command (can modify tags)

```bash
# build signalflow-preprocessing:cpu 
docker build -t cincibrainlab/signalflow-preprocessing:cpu -f Dockerfile-signalflow-preprocessing-cpu .

# build signalflow-preprocessing:cpu 
docker build -t cincibrainlab/signalflow-preprocessing:gpu-f Dockerfile-signalflow-preprocessing-gpu .
```

5. Check image by either using `docker-compose` or `docker run` command (see above)


## License

This project is licensed under the terms of the MIT License.

## Maintainer
This project is maintained by Ernest Pedapati (ernest.pedapati@cchmc.org).
