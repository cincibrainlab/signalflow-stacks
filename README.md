# Signalflow Docker Stacks for EEG Analysis

SignalFlow Docker Stacks are ready-to-run workstation Docker images contain the big "three" platforms for EEG analysis: MATLAB, Python, and R. When active the images allow browser access to either a full desktop experience or web-based notebooks. All applications can access the same underlying file volumes.

The source files for each image are available and drawn from other opensource projects to adapt them to your labs specific purpose.

## Quick Start:

## Selecting an Image:

We maintain a set of image definitions in the cincibrainlab/signalflow-stacks GitHub repository. Sources for each image are maintained in this repository as branches.

![SF panel](sf-stacks-panel.png)

Container images are hosted on [CinciBrainLab DockerHub Repository](https://hub.docker.com/repositories/cincibrainlab).

### Signalflow-Datascience

`cincibrainlab/signaflow-datascience` is a comprehensive image which contains a web-based interface to Jupyter Hub with access to a full virtual desktop with MATLAB, RStudio, and Visual Studio Code. The base image is derived from `jupyter/scipy-notebook:ubuntu-20.04` in which a XFCE4 desktop `MATLAB 2023a` has been installed and can be accessed through NOVNC following Mathworks recommendations. Authentication is handled by Jupyter Hub token though a single port (default: 8888) (NOVNC desktop is proxied). In addition, desktop version of Rstudio, VSCode, and Libreoffice are available alongside Mathworks.

### Signalflow-MNE

`cincibrainlab/signaflow-mne`

### Signalflow-Development

`cincibrainlab/signalflow-development`

### Signalflow-SecurityMod

`cincibrainlab/signalflow-securitymod` can be built to add various sensitive institution or personal information. This may include ssl-certs, API keys, login information, or scripts or code that otherwise would not be permamently contained within the main images. Source for these images are suitable for a private repository.

### Signalflow-Templates

`signalflow-templates` a single container that contains templates for docker-compose, dockerfiles, scripts that may be useful

## License

This project is licensed under the terms of the MIT License.

## Maintainer
This project is maintained by Ernest Pedapati (ernest.pedapati@cchmc.org).
