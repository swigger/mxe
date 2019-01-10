#!/bin/bash
export MAKE_RETRY=`tty`
# export MAKE_BREAK_CMD='/opt-gather.awk'
if [ "x$1" = "x" ] ; then
make MXE_PLUGIN_DIRS=plugins/gcc7 MXE_TARGETS='x86_64-w64-mingw32.static'  cc $*
else
make MXE_PLUGIN_DIRS=plugins/gcc7 MXE_TARGETS='x86_64-w64-mingw32.static'  $*
fi
