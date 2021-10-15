#!/bin/bash
# Make sure that conda is available



echo "Installing system dependencies"
echo "You will probably be asked for your sudo password."
apt-get update
apt-get install -y python-pip python-dev swig cmake build-essential
apt-get build-dep -y python-pygame
apt-get build-dep -y python-scipy

# Make sure that we're under the directory of the project
cd "$(dirname "$0")/.."

echo "Creating conda environment..."
conda env create -f environment.yml
conda env update

echo "Conda environment created! Make sure to run \`source activate rllab3\` whenever you open a new terminal and want to run programs under rllab."
