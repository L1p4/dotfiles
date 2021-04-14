#
# /etc/bash.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

[[ $DISPLAY ]] && shopt -s checkwinsize
# pacman
alias po='sudo powerpill'
alias pas='yay -Ss'
alias syu='sudo pacman -Sy && sudo powerpill -Su'
alias pS='sudo powerpill -S'
alias SYU='sudo pacman -Syu && yay -Syu'
# quaity of life imptovmetns
alias sc='sudo systemctl'
alias v='vim'
alias sv='sudo vim'
alias ls='ls --color=auto -h'
alias grep='grep --color=auto'
alias time='sudo timedatectl set-ntp true'
alias c='clear;clear'
alias smi='sudo make install'
alias sshon="sudo systemctl start sshd"
alias sshoff="sudo systemctl stop sshd"
# shits and giggels
alias n="st sh -c 'cd $PWD; exec /usr/bin/bash'&"
alias xd='fortune -a | cowthink -f $(find /usr/share/cows -type f | shuf -n 1) | lolcat'
alias sl+='sl -F -c | lolcat'
alias starwars='telnet towel.blinkenlights.nl | lolcat'
alias la="sl -F -c"
alias macka="cat"
alias omereznamacka="nc"
# bash insulter
if [ -f /etc/bash.command-not-found ]; then
            . /etc/bash.command-not-found
fi

# better auto complete
shopt -s autocd
complete -c man
complete -cf sudo
# bash completion
[ -r /usr/share/bash-completion/bash_completion ] && . /usr/share/bash-completion/bash_completion
# disable pausing programs
stty -ixon


# history settings
HISTSIZE=1000
HISTFILESIZE=5000
shopt -s histappend

# propmt 4 not root
export PS1="\[\e[32m\]\u\[\e[m\]@\[\e[36m\]\h\[\e[m\]\[\e[36m\]:\[\e[m\]\W\[\e[32m\]$\[\e[m\] "


# end of file
