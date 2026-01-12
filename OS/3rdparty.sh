{\rtf1\ansi\ansicpg1252\cocoartf2867
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fnil\fcharset0 .AppleSystemUIFontMonospaced-Regular;}
{\colortbl;\red255\green255\blue255;\red24\green26\blue30;\red244\green246\blue249;}
{\*\expandedcolortbl;;\cssrgb\c12157\c13725\c15686;\cssrgb\c96471\c97255\c98039;}
\paperw11900\paperh16840\margl1440\margr1440\vieww23540\viewh17840\viewkind0
\deftab720
\pard\pardeftab720\partightenfactor0

\f0\fs27\fsmilli13600 \cf2 \cb3 \expnd0\expndtw0\kerning0
# {\field{\*\fldinst{HYPERLINK "https://github.com/indilib/indi-3rdparty"}}{\fldrslt https://github.com/indilib/indi-3rdparty}}\
#\
\
sudo apt-get -y install libnova-dev libcfitsio-dev libusb-1.0-0-dev zlib1g-dev libgsl-dev build-essential cmake git libjpeg-dev libcurl4-gnutls-dev libtiff-dev libfftw3-dev libftdi-dev libgps-dev libraw-dev libdc1394-dev libgphoto2-dev libboost-dev libboost-regex-dev librtlsdr-dev liblimesuite-dev libftdi1-dev libavcodec-dev libavdevice-dev libzmq3-dev libudev-dev\
\
cd ~/Projects\
\
git clone --depth=1 https://github.com/indilib/indi-3rdparty\
\
mkdir -p ~/Projects/build/indi-3rdparty-libs\
cd ~/Projects/build/indi-3rdparty-libs\
cmake -DCMAKE_INSTALL_PREFIX=/usr -DCMAKE_BUILD_TYPE=Debug -DBUILD_LIBS=1 ~/Projects/indi-3rdparty\
make -j4\
sudo make install\
\
mkdir -p ~/Projects/build/indi-eqmod\
cd ~/Projects/build/indi-eqmod\
cmake -DCMAKE_INSTALL_PREFIX=/usr -DCMAKE_BUILD_TYPE=Debug ~/Projects/indi-3rdparty/indi-eqmod\
make -j4\
sudo make install\
\
mkdir -p ~/Projects/build/indi-asi\
cd ~/Projects/build/indi-asi\
cmake -DCMAKE_INSTALL_PREFIX=/usr -DCMAKE_BUILD_TYPE=Debug ~/Projects/indi-3rdparty/indi-asi\
make -j4\
sudo make install\
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 mkdir -p ~/Projects/build/indi-svbony\
cd ~/Projects/build/indi-svbony\
cmake -DCMAKE_INSTALL_PREFIX=/usr -DCMAKE_BUILD_TYPE=Debug ~/Projects/indi-3rdparty/indi-svbony\
make -j4\
sudo make install\
\
mkdir -p ~/Projects/build/indi-atik\
cd ~/Projects/build/indi-atik\
cmake -DCMAKE_INSTALL_PREFIX=/usr -DCMAKE_BUILD_TYPE=Debug ~/Projects/indi-3rdparty/indi-atik\
make -j4\
sudo make install}