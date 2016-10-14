@echo off

REM get install-path and create DT-pathes
set DTbase=%~dp0
set DTconfig=%DTbase%config
set DTcache=%DTbase%cache
set DTdata=%DTbase%share\darktable
set DTtmp=%TEMP%
if "%DTtmp%X" == "X" set DTtmp=%DTbase%tmp
set DTplugin=%DTbase%lib\darktable

echo DTbase   : %DTbase%
echo DTconfig : %DTconfig%
echo DTcache  : %DTcache%
echo DTdata   : %DTdata%
echo DTtmp    : %DTtmp%
echo DTplugin : %DTplugin%

REM create directories
if not exist %DTconfig% md %DTconfig%
if not exist %DTconfig%\darktablerc  copy %DTdata%\darktablerc %DTconfig%
if not exist %DTcache% md %DTcache%
if not exist %DTtmp% md %DTtmp%


REM generate files
set GDK_PIXBUF_MODULE_FILE=%DTcache%\loader.cache
%DTbase%framework\gdk-pixbuf-query-loaders >%GDK_PIXBUF_MODULE_FILE%
%DTbase%framework\gtk-query-immodules-3.0  >%DTbase%\framework\lib\gtk-3.0\immodules.cache

set PATH_SAVE=%PATH%

REM start darktable
set PATH=%DTbase%bin;%DTbase%framework
bin\darktable --datadir %DTdata% --moduledir %DTplugin% --tmpdir %DTtmp% --configdir %DTconfig% --cachedir %DTcache%

REM cleanup environment
set PATH=%PATH_SAVE%
set PATH_SAVE=
set GDK_PIXBUF_MODULE_FILE=
set DTbase=
set DTconfig=
set DTcache=
set DTdata=
set DTtmp=
set DTplugin=