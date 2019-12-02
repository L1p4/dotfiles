#   _               _              
#  | |             | |             
#  | |__   __ _ ___| |__  _ __ ___ 
#  | '_ \ / _` / __| '_ \| '__/ __|
#  | |_) | (_| \__ \ | | | | | (__ 
#  |_.__/ \__,_|___/_| |_|_|  \___|
#/etc/bash.bashrc
                                 
                                 

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

[[ $DISPLAY ]] && shopt -s checkwinsize

alias pa='sudo pacman'
alias pas='yay -Ss'
alias sc='sudo systemctl'
alias sv='sudo vim'
alias ls='ls --color=auto -h'
alias grep='grep --color=auto'
alias xd='fortune -a | cowthink -f $(find /usr/share/cows -type f | shuf -n 1) | lolcat'
alias starwars='telnet towel.blinkenlights.nl | lolcat'
alias time='sudo timedatectl set-ntp true'
alias sl+='sl -F -c | lolcat'
alias c='clear ; clear'
alias smi='sudo make install'
alias syu='sudo pacman -Sy && sudo powerpill -Su'
alias la="sl -F -c | lolcat"
alias macka="cat"
alias omereznamacka="nc"

shopt -s autocd
complete -c man
complete -cf sudo
stty -ixon

export PS1="\[\e[32m\]\u\[\e[m\]@\[\e[36m\]\h\[\e[m\]\[\e[36m\]:\[\e[m\]\W\[\e[32m\]$\[\e[m\] "

[ -r /usr/share/bash-completion/bash_completion ] && . /usr/share/bash-completion/bash_completion
