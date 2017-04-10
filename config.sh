#!/bin/sh
#
# Configuration for the module to compile, the Swift toolchain, and
# the compiler and linker flags to use.
#
Mod=CoglPango
mod=cogl-pango
Module=${Mod}-1.0
module=${mod}-1.0
export PATH=`pwd`/.build/gir2swift/.build/debug:"${PATH}"
LINKFLAGS=`pkg-config --libs $module cogl-1.0 cogl-gl-1.0 cogl-path-1.0 pango pangoft2 gobject-2.0 gio-unix-2.0 glib-2.0 | tr ' ' '\n' | sed 's/^/-Xlinker /' | tr '\n' ' '`
CCFLAGS=`pkg-config --cflags $module cogl-1.0 cogl-gl-1.0 cogl-path-1.0 pango pangoft2 gobject-2.0 gio-unix-2.0 glib-2.0 | tr ' ' '\n' | sed 's/^/-Xcc /' | tr '\n' ' ' `
TAC="tail -r"
if which tac >/dev/null ; then
   TAC=tac
   else if which gtac >/dev/null ; then
	TAC=gtac
   fi
fi
