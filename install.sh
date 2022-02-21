#!/bin/bash
echo "Updating packages"
sudo apt-get update
python -m ensurepip --upgrade
echo "installing Python"
sudo apt install python3 -y
echo "installing pip"
sudo apt install python3-pip -y
echo "creating virtual environment"
pt install python3.8 python3.8-venv python3-venv -y
python3.8 -m venv .env -y
source .env/bin/activate
python --version 
echo "installing project requirements"
pip install -r requirements.txt 
