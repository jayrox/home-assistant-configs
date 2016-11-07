# Build libcec3 for cec-web
apt-get update  
apt-get install cmake liblockdev1-dev libudev-dev libxrandr-dev python-dev swig  
cd  
git clone https://github.com/Pulse-Eight/platform.git  
mkdir platform/build  
cd platform/build  
cmake ..  
make  
sudo make install  
cd  
git clone https://github.com/Pulse-Eight/libcec.git  
cd libcec  
git checkout c559955d8892c22e466b5488bc5142dcce2edc16  
mkdir libcec/build  
cd libcec/build  
cmake -DRPI_INCLUDE_DIR=/opt/vc/include -DRPI_LIB_DIR=/opt/vc/lib ..  
make -j4  
sudo make install  
sudo ldconfig  
