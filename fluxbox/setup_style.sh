#!/usr/bin/env bash

DIST=solaris.tar.gz
DIST_URL=http://files.customize.org/download/files/52323/$DIST
FLUXBOX_DIR=$(dirname $0)

wget $DIST_URL
mkdir -p $FLUXBOX_DIR/styles
tar xfz $DIST -C $FLUXBOX_DIR/styles
rm $DIST
