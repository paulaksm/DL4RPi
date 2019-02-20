#
# Make install Python 3.6
# ref: http://www.unixlike.com.br/2017/09/instalando-python-36-codigo-fonte-no.html
sudo apt update
sudo apt install vim virtualenv libhdf5-dev
sudo apt install make build-essential libssl-dev zlib1g-dev
sudo apt install libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm
sudo apt install libncurses5-dev libncursesw5-dev xz-utils tk-dev
sudo apt --fix-broken install
wget https://www.python.org/ftp/python/3.6.2/Python-3.6.2.tar.xz
tar -Jxf Python-3.6.2.tar.xz
cd Python-3.6.2/
./configure --prefix=/usr/local --enable-shared --enable-optimizations LDFLAGS="-Wl,-rpath /usr/local/lib" --with-system-expat --with-system-ffi --with-ensurepip=yes
make
sudo make altinstall

#
# Configuring virtualenv for Python 3.6
pip3.6 install --user --upgrade pip
pip3.6 install --user virtualenvwrapper
mkvirtualenv --python=/usr/local/bin/python3.6 keras

#
# Installing libraries on keras virtualenv
# List of wheels for RPi https://www.piwheels.org/packages.html
workon keras
pip install -U pip
pip install scipy-0.18.0rc2-cp36-cp36m-linux_armv7l.whl
pip install numpy
pip install h5py-2.8.0rc1-cp36-cp36m-linux_armv7l.whl 
pip install keras
pip install tensorflow-1.11.0-cp36-none-linux_armv7l.whl

