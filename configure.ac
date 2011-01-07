AC_INIT([myenv], [0.0.1])

AC_PREFIX_DEFAULT(${HOME})

AM_INIT_AUTOMAKE([tar-pax])

AC_OUTPUT([
Makefile
emacs/Makefile
git/Makefile
zsh/Makefile
xorg/Makefile
])

cat <<EOM
Configuration:
==============================================================================

    VERSION     = ${VERSION}

    prefix      = ${prefix}

==============================================================================
EOM
