#!/bin/bash
cd
cd SuperSlicer
echo "===================="
echo "= coffee break n°1 ="
echo "===================="
sudo ./BuildLinux.sh -u
echo "===================="
echo "= coffee break n°2 ="
echo "===================="
./BuildLinux.sh -dsi
echo "===================="
echo "=      finish      ="
echo "===================="
