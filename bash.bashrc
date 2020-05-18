#
# /etc/bash.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

[[ $DISPLAY ]] && shopt -s checkwinsize
# pacman
alias pa='sudo powerpill'
alias pas='yay -Ss'
alias syu='sudo pacman -Sy && sudo powerpill -Su'
alias ps='sudo powerpill -S'

alias sc='sudo systemctl'
alias sv='sudo vim'
alias ls='ls --color=auto -h'
alias grep='grep --color=auto'
alias xd='fortune -a | cowthink -f $(find /usr/share/cows -type f | shuf -n 1) | lolcat'
alias starwars='telnet towel.blinkenlights.nl | lolcat'
alias time='sudo timedatectl set-ntp true'
alias sl+='sl -F -c | lolcat'
alias c='clear;clear'
alias smi='sudo make install'
alias la="sl -F -c"
alias macka="cat"
alias omereznamacka="nc"
alias sshon="sudo systemctl start sshd"
alias sshoff="sudo systemctl stop sshd"

shopt -s autocd
complete -c man
complete -cf sudo
stty -ixon

# bash completion
[ -r /usr/share/bash-completion/bash_completion ] && . /usr/share/bash-completion/bash_completion
# propmt 4 not root
export PS1="\[\e[32m\]\u\[\e[m\]@\[\e[36m\]\h\[\e[m\]\[\e[36m\]:\[\e[m\]\W\[\e[32m\]$\[\e[m\] "
