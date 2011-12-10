AC_INIT([myenv], [0.0.1])

AC_PREFIX_DEFAULT(${HOME})

AC_PROG_LN_S

AM_INIT_AUTOMAKE([tar-pax])

AC_OUTPUT([
Makefile
bash/Makefile
bin/Makefile
git/Makefile
me/Makefile
proc/Makefile
ruby/Makefile
vim/Makefile
vim/after/Makefile
vim/after/ftplugin/Makefile
vim/after/syntax/Makefile
vim/autoload/Makefile
vim/bundle/Makefile
xorg/Makefile
zsh/Makefile
])

cat <<EOM
Configuration:
==============================================================================

    VERSION     = ${VERSION}

    prefix      = ${prefix}

==============================================================================
EOM
