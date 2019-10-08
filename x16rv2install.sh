#!/bin/bash
################################################################################
# Original Author:   Eric ExtremeHash.io
#
# Program:
#   Install x16 bitstream
#
#
################################################################################

cd

sudo apt install make
sudo apt install screen
sudo apt install gcc
sudo apt-get install libcurl4-openssl-dev

sudo systemctl stop minerator
sudo systemctl disable minerator

mkdir x16
cd x16

wget https://github.com/NextDesignSolutions/NextJtag/releases/download/v2.4/NextJtag-2.4.0-Linux-x86_64.tar.gz
wget https://www.dropbox.com/s/5kbov2365li8hm9/as_miner_x16rv2_3.1.2.tar.gz
wget https://www.dropbox.com/s/grbhu9afwbqw6xg/as_x16rv2_bitstreams_3.1.tar.gz
wget https://www.dropbox.com/s/ohgguruyot4hpug/as_xdma_driver_1.0.tar.gz

tar -xf NextJtag-2.4.0-Linux-x86_64.tar.gz
tar -xf as_miner_x16rv2_3.1.2.tar.gz
tar -xf as_x16rv2_bitstreams_3.1.tar.gz
tar -xf as_xdma_driver_1.0.tar.gz

rm NextJtag-2.4.0-Linux-x86_64.tar.gz
rm as_miner_x16rv2_3.1.2.tar.gz
rm as_x16rv2_bitstreams_3.1.tar.gz
rm as_xdma_driver_1.0.tar.gz

whiptail --title "Example Dialog" --msgbox "Now you have to paste the NextjTag_License file press enter to open the file after you pasted it do CTRL + x then press y and press enter to save" 8 78
nano ~/x16/NextJtag-2.4.0-Linux-x86_64/bin/nextjtag_license.txt

sudo ~/x16/NextJtag-2.4.0-Linux-x86_64/bin/nextjtag -a -c
sudo ~/x16/NextJtag-2.4.0-Linux-x86_64/bin/nextjtag -m -a --set-jtag-freq 30000000 -b ~/x16/bitstreams/top.bit

cd ~/x16/as_xdma_driver/driver
sudo make clean
sudo make
sudo ~/x16/rescan.sh
sudo ~/x16/as_xdma_driver/driver/load_driver.sh
sudo ~/x16/rescan.sh
