#!/usr/bin/env bash

BASEDIR=$(dirname $0)
MKDIR='mkdir -p'
LINK='ln -s'

BUNDLE_DIR=$BASEDIR/bundle
SOLARIZED_BUNDLE=${SOLARIZED_BUNDLE:-~/src/solarized/vim-colors-solarized}

echo setting up solarized
$MKDIR $BASEDIR/bundle
$LINK $SOLARIZED_BUNDLE $BUNDLE_DIR/

echo done
