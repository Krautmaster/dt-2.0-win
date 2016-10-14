#!/bin/sh

#
# install source
#

echo get additional source files
cd /usr/src
mkdir tars
cd tars
wget http://ftp.gnome.org/pub/GNOME/sources/libsoup/2.53/libsoup-2.53.2.tar.xz
wget http://github.com/zeux/pugixml/releases/download/v1.7/pugixml-1.7.tar.gz
wget https://github.com/nzjrs/osm-gps-map/archive/1.1.0.tar.gz -O osmgpsmap-1.1.0.tar.gz
cd ..
echo .

echo unpack additional source files
tar -xvf tars/libsoup-2.53.2.tar.xz
tar -xvf tars/pugixml-1.7.tar.gz
tar -xvf tars/osmgpsmap-1.1.0.tar.gz
echo .

echo clone git reposititory
git clone https://github.com/jibaer/darktable.git
cd darktable
git checkout darktable-2.0.x-win
echo.

