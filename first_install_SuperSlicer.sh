#!/bin/bash

sudo apt update
sudo apt install git 
cd
echo "===================="
echo "= coffee break n°1 ="
echo "===================="
git clone https://github.com/supermerill/SuperSlicer.git
cd SuperSlicer
echo "===================="
echo "= coffee break n°2 ="
echo "===================="
sudo ./BuildLinux.sh -u
echo "===================="
echo "= coffee break n°2 ="
echo "===================="
./BuildLinux.sh -dsi
echo "===================="
echo "=      finish      ="
echo "===================="
