AC_INIT([dotfiles], [0.0.5])

AC_PREFIX_DEFAULT(${HOME})

AC_PROG_LN_S

AM_INIT_AUTOMAKE([tar-ustar])

AC_OUTPUT([
Makefile
bash/Makefile
bin/Makefile
coreutils/Makefile
git/Makefile
mail/Makefile
me/Makefile
proc/Makefile
repos/Makefile
ruby/Makefile
task/Makefile
vim/Makefile
vim/after/Makefile
vim/after/ftplugin/Makefile
vim/after/syntax/Makefile
vim/autoload/Makefile
vim/bundle/Makefile
vim/UltiSnips/Makefile
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
