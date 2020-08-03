#!/bin/bash
make
sudo make install
sudo modprobe -r rtl8723be
sudo modprobe rtl8723be ant_sel=3
echo "options rtl8723be ant_sel=3" | sudo tee /etc/modprobe.d/rtl8723be.conf
