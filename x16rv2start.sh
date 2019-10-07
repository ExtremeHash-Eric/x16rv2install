#!/bin/bash
################################################################################
# Original Author:   Eric ExtremeHash.io
#
# Program:
#   Program the x16 bitstream
#
#
################################################################################

cd
cd x16

sudo ~/x16/NextJtag-2.4.0-Linux-x86_64/bin/nextjtag -a -c
sudo ~/x16/NextJtag-2.4.0-Linux-x86_64/bin/nextjtag -m -a --set-jtag-freq 30000000 -b ~/x16/bitstreams/top.bit

cd ~/x16/as_xdma_driver/driver
sudo make clean
sudo make
sudo ~/x16/rescan.sh
sudo ~/x16/as_xdma_driver/driver/load_driver.sh
sudo ~/x16/rescan.sh
