#!/bin/bash

#cool colors go brrrrrrr
function echo_yellow {
  TEXT="${@}"
  echo -e "\e[33m${TEXT}\e[0m"
}
function echo_green {
  TEXT="${@}"
  echo -e "\e[32m${TEXT}\e[0m"
}
function echo_red {
  TEXT="${@}"
  echo -e "\e[31m${TEXT}\e[0m"
}


sudo apt update
wait
sudo apt install git 
wait
cd
echo_green "===================="
echo_yellow "= coffee break n°1 ="
echo_green "===================="
git clone https://github.com/supermerill/SuperSlicer.git
sudo apt upgrade -y
wait
cd SuperSlicer
echo_green "===================="
echo_yellow "= coffee break n°2 ="
echo_green "===================="
sudo ./BuildLinux.sh -u
wait
echo_green "===================="
echo_yellow "= coffee break n°2 ="
echo_green "===================="
sudo ./BuildLinux.sh -dsi
wait
echo_yellow "===================="
echo_green "===================="
echo_yellow "=      finish      ="
echo_green "===================="
echo_yellow "===================="
