#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export PS1="\[\e[32m\]\u\[\e[m\]@\[\e[36m\]\h\[\e[m\]\[\e[31m\]:\[\e[m\]\[\e[37m\]\W\[\e[m\]\[\e[32m\]\\$\[\e[m\] "
