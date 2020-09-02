#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\[\e[00;31m\]\u\[\e[00;315m\]@\[\e[00;32m\]\h\[\e[00;315m\] \W]\$ '

# Custom Aliases:
alias la='ls -a'
