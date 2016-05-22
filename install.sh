#!/bin/bash

# pin.park test version:
#   python 2.7

HOME_PATH=`pwd`
TEMP_DIR="$HOME_PATH/tmp"

#install pip
mkdir -p $TEMP_DIR
cd $TEMP_DIR
curl -O http://python-distribute.org/distribute_setup.py
sudo python distribute_setup.py
sudo rm distribute_setup.py
sudo easy_install pip

#install virtualenv
sudo pip install virtualenv

#create myvenv
cd $HOME_PATH
mkdir djangogirls
cd djangogirls
python -m virtualenv myvenv

#execute myvenv
source myvenv/bin/activate

#install django
pip install django==1.8
