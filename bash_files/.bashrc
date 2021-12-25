#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# export bash prompt
PS1='[\[\e[00;31m\]\u\[\e[00;315m\]@\[\e[00;32m\]\h\[\e[00;315m\] \W]\$ '

## --- Custom Aliases: --- 
## System Utils:
alias la='ls -a'                            # for hidden files
alias ls='ls --color=auto'                  # use true color
alias note='vim ~/Documents/notes.md'       # open system notes file
alias log='vim ~/Documents/changelog.md'    # open system changelog

## Make from Template:
alias new_cpp='function _new_cpp(){ cp ~/Templates/new.cpp $1; };_new_cpp'
alias new_c='function _new_c(){ cp ~/Templates/new.c $1; };_new_c'

source "$HOME/.cargo/env"

## Add conda to PATH
export PATH="$PATH:/opt/miniconda3/bin"

## Add jupyter-notebook launch script to path
export PATH="$PATH:~/.dotfiles/scripts/launch-jupyter-notebook.sh"

## Add Java Window setting for bspwm
export _JAVA_AWT_WM_NONREPARTENTING=1
