Some helpers for Darktable-Windows build
========================================

inst-pkg.sh
-----------
This scripts installs all packages from msys2 and mingw64 that are
needed for the build of darktable. 

inst-src.sh
-----------
This script get the source of the additional libraries neede to build
darktable that have no (binary) package in msys or mingw64. Additional
it clones the github repositorie from me and checkout the darktable-2.0.x-branch

make-pkg.sh
-----------
This script collects all the files together that are needed to run darktable outside
of MSYS. And it creates a zip-archive that can used as a binary package.
Before you can run this script you have to build and install (make install) DT.
The script expects the directory structure i mention in doc/windows-msys2.txt!

What the script does in detail:
- create a directory /pkg/darktable
- copy all needed DLLs and other files from /mingw64 and /gcc to /pkg/darktable/framework
- copy the installation of darktable from /opt/darktable to /pkg/darktable/
- copy the launcher darktable.bat to /pkg/darktable
- pack the complete directory /pkg/darktable in a zip-file with name dt-2.0.x-win-<date>.zip

All .sh-script have to be started from the MSYS-shell.

darktable.bat
-------------
A simple launcher script to startup darktable. This will be part of the final
package zip-file. It sets the search path, create some needed files and calls 
bin\darktable.exe with the params for the different paths that DT needs:

configdir : <installation-directory>\config
cachedir  : <installation-directory>\cache
datadir   : <installation-directory>\share\darktable
plugindir : <installation-directory>\lib\darktable
if the directory %TEMP% is available it set tempdir to %TEMP%
else it sets tmpdir to <installation-directory>\tmp
set DTtmp=%TEMP%
if "%DTtmp%X" == "X" set DTtmp=%DTbase%tmp


