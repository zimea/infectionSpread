#!/bin/bash

DIR='venv'
FILE='requirements.txt'

python3 -m venv $DIR
source $DIR/bin/activate
pip3 install -r $FILE
pip3 install jupyterlab ipykernel
python3 -m ipykernel install --user --name=$DIR
