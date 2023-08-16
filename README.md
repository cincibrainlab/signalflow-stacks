# Signalflow Docker Stacks for EEG / ML / Signal Analysis

SignalFlow Docker Stacks are ready-to-run workstation Docker images contain the big "three" platforms for EEG analysis: MATLAB, Python, and R. When active the images allow browser access to either a full desktop experience or web-based notebooks. All applications can access the same underlying file volumes.

The source files for each image are available and drawn from other opensource projects to adapt them to your labs specific purpose.

## Quick Start:

### Selecting an Image:

We maintain two base images. Each image has a :cpu or :gpu tag depending on your environment. The gpu stack contains a CUDA driver and enables GPU support throughout the container for Nvidia GPUs.

![SF panel](sf-stacks-panel.png)

Container images are hosted on [CinciBrainLab DockerHub Repository](https://hub.docker.com/repositories/cincibrainlab).

### Signalflow-Preprocessing

Go to [branch](https://github.com/cincibrainlab/signalflow-stacks/tree/signalflow-preprocessing)

### Signalflow-Datascience

Go to [branch](https://github.com/cincibrainlab/signalflow-stacks/tree/signalflow-datascience)

## License

This project is licensed under the terms of the MIT License.

## Maintainer
This project is maintained by Ernest Pedapati (ernest.pedapati@cchmc.org).
