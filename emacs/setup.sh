#!/usr/bin/env bash

BASEDIR=$(dirname $0)
MKDIR='mkdir -p'

echo setting up site-lisp
$MKDIR $BASEDIR/site-lisp

echo setting up color themes
$MKDIR $BASEDIR/site-lisp/color-themes
if [[ -d ~/src/solarized ]]; then
  echo ... solarized color theme
  ln -sf ~/src/solarized/emacs-colors-solarized/color-theme-solarized.el \
    $BASEDIR/site-lisp/color-themes/
else
  echo ... solarized not installed in ~/src \(git clone git://github.com/altercation/solarized.git\)
fi
echo done

# DIST=solaris.tar.gz
# DIST_URL=http://files.customize.org/download/files/52323/$DIST
# FLUXBOX_DIR=$(dirname $0)

# wget $DIST_URL
# mkdir -p $FLUXBOX_DIR/styles
# tar xfz $DIST -C $FLUXBOX_DIR/styles
# rm $DIST
