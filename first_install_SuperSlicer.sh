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

#chose if the user want to buils SuperSlicer of Mortadella Slicer
read -r -p "Do you want to install SuperSlicer or Mortadella_Slicer? [S/M] " response
case "$response" in
    [sS][eE][sS]|[sS]) 
      sudo apt update
wait
sudo apt install git 
wait
cd
echo_green "===================="
echo_yellow "= coffee break n°1 ="
echo_green "===================="
sudo apt upgrade -y
wait
      git clone https://github.com/supermerill/SuperSlicer.git
      wait
cd SuperSlicer
        ;;
    *)
        sudo apt update
wait
sudo apt install git 
wait
cd
echo_green "===================="
echo_yellow "= coffee break n°1 ="
echo_green "===================="
sudo apt upgrade -y
wait
        git clone https://github.com/melROLL/Mortadella_Slic3r
        wait
cd Mortadella_Slic3r

        ;;
esac


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
