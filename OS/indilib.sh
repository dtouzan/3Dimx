# https://github.com/indilib/indi
#

sudo apt-get install -y \
  git \
  cdbs \
  dkms \
  cmake \
  ninja-build \
  fxload \
  libev-dev \
  libgps-dev \
  libgsl-dev \
  libraw-dev \
  libusb-dev \
  zlib1g-dev \
  libftdi-dev \
  libjpeg-dev \
  libkrb5-dev \
  libnova-dev \
  libtiff-dev \
  libfftw3-dev \
  librtlsdr-dev \
  libcfitsio-dev \
  libgphoto2-dev \
  build-essential \
  libusb-1.0-0-dev \
  libdc1394-dev \
  libboost-regex-dev \
  libcurl4-gnutls-dev \
  libtheora-dev \
  libxisf-dev

mkdir -p ~/Projects
cd ~/Projects

git clone --depth 1 https://github.com/indilib/indi.git

cd ~/Projects/indi
cmake -B build -G Ninja -DCMAKE_INSTALL_PREFIX=/usr -DCMAKE_BUILD_TYPE=Debug
cmake --build build -j 1
sudo cmake --install build

