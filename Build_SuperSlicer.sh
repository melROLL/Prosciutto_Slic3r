#!/bin/bash
cd
cd SuperSlicer
echo "===================="
echo "= coffee break n°1 ="
echo "===================="
sudo ./BuildLinux.sh -u
wait
echo "===================="
echo "= coffee break n°2 ="
echo "===================="
sudo ./BuildLinux.sh -dsi
wait
echo "===================="
echo "=      finish      ="
echo "===================="
