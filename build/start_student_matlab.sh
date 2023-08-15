#!/bin/bash

# Check if the STUDENT_USER environment variable is set
if [ -z "$STUDENT_USER" ]; then
    echo "STUDENT_USER environment variable is not set. Exiting."
    exit 1
fi

# Define MATLAB directories
MATLAB_DIR="$HOME/Documents/MATLAB"
MATLAB_MAIN_DIR="/opt/matlab"
MATLAB_CONFIG_DIR="$HOME/.matlab"

# Create the user if it doesn't exist
if ! id -u $STUDENT_USER &>/dev/null; then
    sudo useradd -M -d $HOME $STUDENT_USER
fi

xhost +SI:localuser:$STUDENT_USER

# Get the group owner of the MATLAB main directory
MATLAB_GROUP=$(stat -c '%G' "$MATLAB_MAIN_DIR")

# Add the student user to the group
sudo usermod -a -G "$MATLAB_GROUP" $STUDENT_USER

# Grant the student user permissions to the MATLAB directories and home directory
for dir in "$MATLAB_DIR" "$MATLAB_CONFIG_DIR" "$HOME"; do
    [ ! -d "$dir" ] && mkdir -p "$dir"
    sudo setfacl -Rm u:$STUDENT_USER:rwx "$dir"
    sudo setfacl -dRm u:$STUDENT_USER:rwx "$dir"
done

sudo -Eu $STUDENT_USER matlab
