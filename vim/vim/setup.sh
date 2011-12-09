#!/usr/bin/env bash

BASEDIR=$(dirname $0)
MKDIR='/bin/mkdir -p'
LINK='/bin/ln -sf'
LS='/bin/ls'

AUTOLOAD_DIR=$BASEDIR/autoload
PATHOGEN=${PATHOGEN:-~/src/vim-pathogen}
BUNDLE_DIR=$BASEDIR/bundle
BUNDLES="solarized/vim-colors-solarized vim-easymotion vim-surround snipmate.vim tcomment_vim nerdtree vim-fugitive"

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

function add_plugin() {
  local srcdir=$1
  [[ -d $srcdir ]] || return
  subdirs=$(find $srcdir -type d -depth 1 -name '[A-z]*')
  for d in $subdirs; do
    for f in $($LS $d); do
      $LINK $d/$f $BASEDIR/$(basename $d)
    done
  done
}


echo -n setting up pathogen...
safe_mkdir $AUTOLOAD_DIR
$LINK $PATHOGEN/autoload/pathogen.vim $AUTOLOAD_DIR/
echo done

echo -n setting up bundles...
for bundle in $BUNDLES; do
  $LINK ~/src/$bundle $BUNDLE_DIR/
done
echo done

echo -n setting up git-vim...
add_plugin ~/src/git-vim
echo done
