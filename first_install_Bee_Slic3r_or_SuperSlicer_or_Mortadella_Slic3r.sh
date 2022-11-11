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

#chose if the user want to build SuperSlicer or Mortadella Slicer or bee Slic3r
read -r -p "Do you want to install Bee_Slic3r (B), Don't do anything (D), install SuperSlicer (S), install Mortadella_Slicer (M) ? [B/D/S/M] " choice
    case "${choice}" in
      M|m)

sudo chmod +x Build_Mortadella_Slic3r.sh
        git clone https://github.com/melROLL/Mortadella_Slic3r
        wait
cd Mortadella_Slic3r
        ;;
      S|s)

sudo chmod +x Build_SuperSlicer.sh
      git clone https://github.com/supermerill/SuperSlicer.git
      wait
cd SuperSlicer 
        ;;
      B|b)

sudo chmod +x Build_Bee_Slic3r.sh
      git clone https://github.com/melROLL/Bee_Slic3r
      wait
cd Bee_Slic3r      
        ;;
      D|d)
        break;;
      *)
        ;;
    esac
echo_green "===================="
echo_yellow "= coffee break n°1 ="
echo_green "===================="
sudo apt update 
sudo apt upgrade -y


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
