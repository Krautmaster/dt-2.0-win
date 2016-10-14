#!/bin/sh

#
# Collect all files to make a bin package
#

echo .
echo Collect Files for binary package
mkdir -p /pkg/darktable/framework

echo --- Frameworks DLLs
while read f  
do
  cp -f $f /pkg/darktable/framework
done <DT-DLL-list-FW.txt

echo --- Framework EXEs
cp -f /mingw64/bin/gdk-pixbuf-query-loaders.exe /pkg/darktable/framework
cp -f /mingw64/bin/gtk-query-immodules-3.0.exe  /pkg/darktable/framework

echo --- fontconfig
mkdir -p /pkg/darktable/framework/etc/fonts
cp -rf /mingw64/etc/fonts/* /pkg/darktable/framework/etc/fonts

echo --- gdk-pixbuf loaders
mkdir -p /pkg/darktable/framework/lib/gdk-pixbuf-2.0
cp -rf /mingw64/lib/gdk-pixbuf-2.0/* /pkg/darktable/framework/lib/gdk-pixbuf-2.0

echo --- lib/gtk-3.0
mkdir -p /pkg/darktable/framework/lib/gtk-3.0
cp -rf /mingw64/lib/gtk-3.0/* /pkg/darktable/framework/lib/gtk-3.0

echo --- icons
mkdir -p /pkg/darktable/framework/share/icons
cp -rf /mingw64/share/icons/* /pkg/darktable/framework/share/icons

echo --- xml-files
mkdir -p /pkg/darktable/framework/share/xml
cp -rf /mingw64/share/xml/* /pkg/darktable/framework/share/xml

echo --- share/glib-2.0
mkdir -p /pkg/darktable/share/glib-2.0
cp -rf /mingw64/share/glib-2.0/* /pkg/darktable/share/glib-2.0

echo --- lensfun
mkdir -p /pkg/darktable/share/lensfun
cp -rf /mingw64/share/lensfun/* /pkg/darktable/share/lensfun

echo --- Darktable files
cp -rf /opt/darktable/* /pkg/darktable

echo --- start-bat
cp -rf /usr/src/darktable/win-helper/darktable.bat /pkg/darktable

cd /pkg
zip -r dt-2.0.x-win-`date +%Y%m%d`.zip darktable/*
echo .
echo Created dt-2.0.x-win-`date +%Y%m%d`.zip
