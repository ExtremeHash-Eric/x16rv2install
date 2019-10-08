# x16rv2install
Install script for the x16rv2 bistream

This script will help you with setting up the x16rv2 bitstream from alterned silicon.

The script will do the following:
 - Download the files
 - Unzip all files and put them in the right place
 - Program the cards
 
Please install the following things manual before starting:
 - ( apt update )
 - ( apt install git )
 - ( sudo apt install make )
 - ( sudo apt install screen )
 - ( sudo apt install gcc )
 - ( sudo apt-get install libcurl4-openssl-dev )
 
If you want to use this script do the following command:
 - ( git clone https://github.com/ExtremeHash-Eric/x16rv2install.git )
 - ( cd x16rv2install )
 - Next you will have to run the script ( sudo sh x16rv2install.sh )
 
When this is done you have to start the miner this can be done with the following commands:
 - ( screen -S x16 )
 - ( sudo ./as_miner -o stratum+tcp://multi.extremehash.io:3637 -u (RVN address) -p d=128 -k (key) )

   (Your key can be found at http://web.altered-silicon.net )

 To quit the screen you have to do ( CTRL + a + d )
 If you want to attach again to the screen use ( screen -x x16 )
 
 --------------------------------------------------------------------------------------------------------------
# x16rv2start

If you restart the rig please use the following commands:
 - ( git clone https://github.com/ExtremeHash-Eric/x16rv2install.git )
 - ( cd x16rv2install )
 - ( sudo sh x16rv2start.sh )

When this is done you have to start the miner this can be done with the following commands:
 - ( screen -S x16 )
 - ( sudo ./as_miner -o stratum+tcp://multi.extremehash.io:3637 -u (RVN address) -p d=128 -k (key) )
 
 To quit the screen you have to do ( CTRL + a + d )
 If you want to attach again to the screen use ( screen -x x16 )
 
 --------------------------------------------------------------------------------------------------------------
If you want to have both scripts please use the following commands:
 - ( apt install git )
 - ( git clone https://github.com/ExtremeHash-Eric/x16rv2install.git )
 
If you got any issue or any question please contact me on discord ( Eric ExtremeHash.io#5751 )
