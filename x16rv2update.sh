#!/bin/bash
################################################################################
# Original Author:   Eric ExtremeHash.io
#
# Program:
#   Update the x16 bitstream
#
#
################################################################################

cd

sudo systemctl stop minerator
sudo systemctl disable minerator

sudo rm -rf ~/x16/as_miner_x16rv2_3.1.2
sudo rm -rf ~/x16/as_x16rv2_bitstreams_3.1

cd x16

wget https://www.dropbox.com/s/31fxyh5vw3eeeng/as_miner_x16rv2_3.2.0.tar.gz
wget https://www.dropbox.com/s/7rsnn1omqj9zeo3/as_x16rv2_bitstreams_3.2.tar.gz

tar -xf as_miner_x16rv2_3.2.0.tar.gz
tar -xf as_x16rv2_bitstreams_3.2.tar.gz

sudo ~/x16/NextJtag-2.4.0-Linux-x86_64/bin/nextjtag -a -c
sudo ~/x16/NextJtag-2.4.0-Linux-x86_64/bin/nextjtag -m -a --set-jtag-freq 30000000 -b ~/x16/bitstreams/top.bit

cd ~/x16/as_xdma_driver/driver
sudo make clean
sudo make
sudo ~/x16/rescan.sh
sudo ~/x16/as_xdma_driver/driver/load_driver.sh
sudo ~/x16/rescan.sh
