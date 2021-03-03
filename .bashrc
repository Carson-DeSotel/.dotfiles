#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\[\e[00;31m\]\u\[\e[00;315m\]@\[\e[00;32m\]\h\[\e[00;315m\] \W]\$ '

# Custom Aliases:
alias la='ls -a'
alias ls='ls --color=auto'
alias connect='ssh desot033@apollo.cselabs.umn.edu'

alias new_cpp='function _new_cpp(){ cp ~/Templates/new.cpp $1; };_new_cpp'
alias new_c='function _new_c(){ cp ~/Templates/new.c $1; };_new_c'
source "$HOME/.cargo/env"

export PATH="$PATH:/home/carson/.gem/ruby/2.7.0/bin"
# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

