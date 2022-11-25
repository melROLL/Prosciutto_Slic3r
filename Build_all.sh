#!/bin/bash

sudo apt install git
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
sudo chmod +x Build_SuperSlicer.sh
sudo chmod +x Build_Mortadella_Slic3r.sh
sudo chmod +x Build_Bee_Slic3r.sh
cd
echo_yellow "===================="
echo_green "===================="
echo_yellow "=      Downloading      ="
echo_green "===================="
echo_yellow "===================="
        git clone https://github.com/melROLL/Mortadella_Slic3r.git
      git clone https://github.com/melROLL/Bee_Slic3r.git
	        git clone https://github.com/melROLL/SuperSlicerM.git
cd 
echo_yellow "===================="
echo_green "===================="
echo_yellow "=      Mortadella_Slic3r      ="
echo_green "===================="
echo_yellow "===================="


        wait
cd Mortadella_Slic3r
sudo apt update 
sudo apt upgrade -y
chmod +x BuildLinux.sh
sudo ./BuildLinux.sh -u
wait
sudo ./BuildLinux.sh -dsi
wait
cd 
echo_yellow "===================="
echo_green "===================="
echo_yellow "=      SuperSlicer      ="
echo_green "===================="
echo_yellow "===================="

wait
cd SuperSlicerM 
sudo apt update 
sudo apt upgrade -y
chmod +x BuildLinux.sh
sudo ./BuildLinux.sh -u
wait
sudo ./BuildLinux.sh -dsi
wait
cd 
echo_yellow "===================="
echo_green "===================="
echo_yellow "=      Bee_Slic3r      ="
echo_green "===================="
echo_yellow "===================="

      wait
cd Bee_Slic3r    
sudo apt update 
sudo apt upgrade -y
chmod +x BuildLinux.sh
sudo ./BuildLinux.sh -u
wait
sudo ./BuildLinux.sh -dsi
wait  

	
echo_yellow "===================="
echo_green "===================="
echo_yellow "=      finish      ="
echo_green "===================="
echo_yellow "===================="
