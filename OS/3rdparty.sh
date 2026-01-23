# https://github.com/indilib/indi-3rdparty
#

sudo apt-get -y install libnova-dev libcfitsio-dev libusb-1.0-0-dev zlib1g-dev libgsl-dev build-essential cmake git libjpeg-dev libcurl4-gnutls-dev libtiff-dev libfftw3-dev libftdi-dev libgps-dev libraw-dev libdc1394-dev libgphoto2-dev libboost-dev libboost-regex-dev librtlsdr-dev liblimesuite-dev libftdi1-dev libavcodec-dev libavdevice-dev libzmq3-dev libudev-dev

cd ~/Projects

git clone --depth=1 https://github.com/indilib/indi-3rdparty

mkdir -p ~/Projects/build/indi-3rdparty-libs
cd ~/Projects/build/indi-3rdparty-libs
cmake -DCMAKE_INSTALL_PREFIX=/usr -DCMAKE_BUILD_TYPE=Debug -DBUILD_LIBS=1 ~/Projects/indi-3rdparty
make -j2
sudo make install

mkdir -p ~/Projects/build/indi-eqmod
cd ~/Projects/build/indi-eqmod
cmake -DCMAKE_INSTALL_PREFIX=/usr -DCMAKE_BUILD_TYPE=Debug ~/Projects/indi-3rdparty/indi-eqmod
make -j2
sudo make install

mkdir -p ~/Projects/build/indi-asi
cd ~/Projects/build/indi-asi
cmake -DCMAKE_INSTALL_PREFIX=/usr -DCMAKE_BUILD_TYPE=Debug ~/Projects/indi-3rdparty/indi-asi
make -j2
sudo make install

mkdir -p ~/Projects/build/indi-svbony
cd ~/Projects/build/indi-svbony
cmake -DCMAKE_INSTALL_PREFIX=/usr -DCMAKE_BUILD_TYPE=Debug ~/Projects/indi-3rdparty/indi-svbony
make -j2
sudo make install

mkdir -p ~/Projects/build/indi-atik
cd ~/Projects/build/indi-atik
cmake -DCMAKE_INSTALL_PREFIX=/usr -DCMAKE_BUILD_TYPE=Debug ~/Projects/indi-3rdparty/indi-atik
make -j2
sudo make install

mkdir -p ~/Projects/build/indi-playerone
cd ~/Projects/build/indi-playerone
cmake -DCMAKE_INSTALL_PREFIX=/usr -DCMAKE_BUILD_TYPE=Debug ~/Projects/indi-3rdparty/indi-playerone
make -j2
sudo make install