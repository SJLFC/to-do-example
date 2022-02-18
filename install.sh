#!/bin/bash
echo "Updating packages"
sudo apt-get update
echo "installing Python"
sudo apt install python3
echo "installing pip"
sudo apt install python3-pip
echo "creating virtual environment"
pt install python3.8 python3.8-venv python3-venv
python3.8 -m venv .env
source .env/bin/activate
python --version
echo "installing project requirements"
pip install -r requirements.txt
