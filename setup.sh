apt-get update
apt-get -y install build-essential
apt-get -y install cmake git libgtk2.0-dev pkg-config libavcodec-dev libavformat-dev libswscale-dev
apt-get -y install python-dev python-numpy libtbb2 libtbb-dev libjpeg-dev libpng-dev libtiff-dev libdc1394-22-dev
apt-get -y install python3-dev python-dev python-pip python3-pip


pip3 install jasper
pip3 install numpy
pip install numpy


mkdir JupiterApp
cd JupiterApp/
git clone https://github.com/opencv/opencv.git
git clone https://github.com/opencv/opencv_contrib.git

cd opencv
mkdir build
cd build


cmake -D CMAKE_BUILD_TYPE=Release -D CMAKE_INSTALL_PREFIX=/usr/local -D OPENCV_ENABLE_NONFREE:BOOL=ON -D OPENCV_EXTRA_MODULES_PATH=/test/JupiterApp/opencv_contrib/modules -D PYTHON2_INCLUDE_DIR=/usr/include/python2.7 -D PYTHON2_INCLUDE_DIR2=/usr/include/x86_64-linux-gnu/libpython2.7 -D PYTHON2_LIBRARY=/usr/lib/x86_64-linux-gnu/libpython2.7.so -D PYTHON3_INCLUDE_DIR=/usr/include/python3.6m -D PYTHON3_INCLUDE_DIR2=/usr/include/x86_64-linux-gnu/libpython3.6m -D PYTHON3_LIBRARY=/usr/lib/x86_64-linux-gnu/libpython3.6m.so  ..

make
make install

cd ..
rm -rf opencv
rm -rf opencv_contrib


echo All Done!!!
