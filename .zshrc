#!/bin/zsh
################################################################################
# This file is sourced only for interactive shells. It
# should contain commands to set up aliases, functions,
# options, key bindings, etc.
#
# Global Order: zshenv, zprofile, zshrc, zlogin
################################################################################

# USAGE
# If you do not want to version your .zshrc customizations with Git,
#   please use ~/.zshrc.pre and ~/.zshrc.local. The former file is read
#   before ~/.zshrc, the latter is read after it.
# Also, consider reading the refcard and the reference manual for
#   Grml's ZSH setup, which we use, both available from:
#     <http://grml.org/zsh/>

source ~/.grml-etc-core/etc/zsh/zshrc

# Autoload Grml's functions and completions
fpath=(~/.grml-etc-core/usr_share_grml/zsh/ $fpath)

# Your custom things come here
