#!/bin/sh
#
# Configuration for the module to compile, the Swift toolchain, and
# the compiler and linker flags to use.
#
Mod=CoglPango
mod=cogl-pango
Module=${Mod}-1.0
module=${mod}-1.0
BUILD_DIR=`pwd`/.build
export PATH="${BUILD_DIR}/gir2swift/.build/release:${BUILD_DIR}/gir2swift/.build/debug:${PATH}"
LINKFLAGS=`pkg-config --libs $module cogl-1.0 cogl-gl-1.0 cogl-path-1.0 pango pangoft2 cairo gobject-2.0 gio-unix-2.0 glib-2.0 | tr ' ' '\n' | sed -e 's/^/-Xlinker /' -e 's/-Wl,//' | tr '\n' ' '`
CCFLAGS=`pkg-config --cflags $module cogl-1.0 cogl-gl-1.0 cogl-path-1.0 pango pangoft2 cairo gobject-2.0 gio-unix-2.0 glib-2.0 | tr ' ' '\n' | sed 's/^/-Xcc /' | tr '\n' ' ' `
TAC="tail -r"
if which tac >/dev/null ; then
   TAC=tac
   else if which gtac >/dev/null ; then
	TAC=gtac
   fi
fi
