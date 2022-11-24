#!/bin/bash
cd
cd Mortadella_Slic3r
echo "===================="
echo "= coffee break n°1 ="
echo "===================="
sudo ./BuildLinux.sh -u
wait
echo "===================="
echo "= coffee break n°2 ="
echo "===================="
sudo ./BuildLinux.sh -dsi
echo "===================="
echo "=   MacOS break    ="
echo "===================="
sudo chmod +x BuildMacOS.sh
sudo ./BuildMacOS.sh -dsi
wait
echo "===================="
echo "=      finish      ="
echo "===================="
