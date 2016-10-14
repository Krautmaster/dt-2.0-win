#!/bin/sh

#
# Install all needed pkgs in msys
#

pacman -S --noconfirm mingw-w64-x86_64-gtk3
pacman -S --noconfirm mingw-w64-x86_64-exiv2 mingw-w64-x86_64-lcms2 mingw-w64-x86_64-lensfun
pacman -S --noconfirm mingw-w64-x86_64-openjpeg mingw-w64-x86_64-openjpeg2
pacman -S --noconfirm mingw-w64-x86_64-sqlite3  
pacman -S --noconfirm mingw-w64-x86_64-openexr  
pacman -S --noconfirm mingw-w64-x86_64-libwebp
pacman -S --noconfirm mingw-w64-x86_64-graphicsmagick
pacman -S --noconfirm mingw-w64-x86_64-libxslt
pacman -S --noconfirm mingw-w64-x86_64-curl
pacman -S --noconfirm mingw-w64-x86_64-poppler
pacman -S --noconfirm mingw-w64-x86_64-pkg-config
pacman -S --noconfirm mingw-w64-x86_64-diffutils
pacman -S --noconfirm mingw-w64-x86_64-python2
pacman -S --noconfirm mingw-w64-x86_64-gnome-common
pacman -S --noconfirm mingw-w64-x86_64-gobject-introspection
pacman -S --noconfirm mingw-w64-x86_64-cmake
pacman -S --noconfirm intltool
pacman -S --noconfirm python2
pacman -S --noconfirm tar
pacman -S --noconfirm git
pacman -S --noconfirm automake
pacman -S --noconfirm autoconf
pacman -S --noconfirm gtk-doc
pacman -S --noconfirm m4
pacman -S --noconfirm patch
pacman -S --noconfirm zip unzip


  