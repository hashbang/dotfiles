#!/bin/zsh
################################################################################
# This file is sourced only for login shells (i.e. shells
# invoked with "-" as the first character of argv[0], and
# shells invoked with the -l flag). It's read after zshenv.
#
# Global Order: zshenv, zprofile, zshrc, zlogin
################################################################################

source ~/.grml-etc-core/etc/zsh/zprofile

# Your custom things come here


# At last, do the tmux magic
[[ -n "$TMUX" ]] || ~/.tmux_bootstrap
