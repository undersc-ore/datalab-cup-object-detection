#!/bin/sh

echo '> Installing PIP packages...'
pip3 install matplotlib opencv-python cryptography jupyter pandas jupyter_contrib_nbextensions scikit-image
jupyter contrib nbextension install --user

echo '> Installing apt packages...'
apt-get update
apt-get install -y libgl1-mesa-glx

echo '> Installing jupyter vim plugin...'
mkdir -p $(jupyter --data-dir)/nbextensions
cd $(jupyter --data-dir)/nbextensions
    git clone https://github.com/lambdalisue/jupyter-vim-binding vim_binding
    jupyter nbextension enable vim_binding/vim_binding
cd -

echo '> Setting jupyter password...'
jupyter-notebook password
