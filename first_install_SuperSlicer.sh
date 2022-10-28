#!/bin/bash

sudo apt update
wait
sudo apt install git 
wait
cd
echo "===================="
echo "= coffee break n°1 ="
echo "===================="
git clone https://github.com/supermerill/SuperSlicer.git
wait
cd SuperSlicer
echo "===================="
echo "= coffee break n°2 ="
echo "===================="
sudo ./BuildLinux.sh -u
wait
echo "===================="
echo "= coffee break n°2 ="
echo "===================="
./BuildLinux.sh -dsi
wait
echo "===================="
echo "=      finish      ="
echo "===================="
