#!/usr/bin/env bash

BASEDIR=$(dirname $0)
MKDIR='mkdir -p'
LINK='ln -sf'

AUTOLOAD_DIR=$BASEDIR/autoload
PATHOGEN=${PATHOGEN:-~/src/vim-pathogen}
BUNDLE_DIR=$BASEDIR/bundle
SOLARIZED_BUNDLE=${SOLARIZED_BUNDLE:-~/src/solarized/vim-colors-solarized}

function die() {
  echo $* >&2
  exit 1
}

function safe_mkdir() {
  local path=$1
  [[ -d $path ]] && return
  [[ -e $path ]] && die $path exists and is not a directory
  $MKDIR $path
}

echo setting up pathogen
safe_mkdir $AUTOLOAD_DIR
$LINK $PATHOGEN/autoload/pathogen.vim $AUTOLOAD_DIR/

echo setting up solarized
$MKDIR $BASEDIR/bundle
safe_mkdir $BUNDLE_DIR
$LINK $SOLARIZED_BUNDLE $BUNDLE_DIR/

echo done
