#!/bin/bash

#cool colors go brrrrrrr!!!!!!!!!!!!!!
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

sudo chmod +x Build_Bee_Slic3r.sh
sudo chmod +x Build_SuperSlicer.sh
sudo chmod +x Build_Mortadella_Slic3r.sh

#dowloading averything that is needed
cd
sudo apt update 
sudo apt upgrade -y
git clone https://github.com/melROLL/Mortadella_Slic3r
wait
git clone https://github.com/melROLL/Bee_Slic3r.git
wait
git clone https://github.com/supermerill/SuperSlicer.git
wait
cd
cd Mortadella_Slic3r
chmod +x BuildLinux.sh
sudo ./BuildLinux.sh -u
wait
sudo ./BuildLinux.sh -dsi
wait
cd
cd SuperSlicer 
chmod +x BuildLinux.sh
sudo ./BuildLinux.sh -u
wait
sudo ./BuildLinux.sh -dsi
wait
cd
cd Bee_Slic3r
chmod +x BuildLinux.sh      
sudo ./BuildLinux.sh -u
wait
sudo ./BuildLinux.sh -dsi
wait
cd

echo_yellow "===================="
echo_green "===================="
echo_yellow "=    it is over    ="
echo_green "===================="
echo_yellow "===================="
