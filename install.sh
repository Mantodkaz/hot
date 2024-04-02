#!/bin/bash

sudo apt update
sudo apt install -y python3 python3-pip || true

wget -O /tmp/chrome.deb https://mirror.cs.uchicago.edu/google-chrome/pool/main/g/google-chrome-stable/google-chrome-stable_114.0.5735.198-1_amd64.deb
sudo apt install -y /tmp/chrome.deb
rm /tmp/chrome.deb

sudo apt install -y unzip || true
wget https://chromedriver.storage.googleapis.com/114.0.5735.90/chromedriver_linux64.zip
unzip chromedriver_linux64.zip
rm chromedriver_linux64.zip
sudo mv chromedriver /usr/local/bin/
sudo chmod +x /usr/local/bin/chromedriver

cd hot
pip install selenium Pillow
sudo apt install -y screen || true
