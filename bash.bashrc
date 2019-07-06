#
# /etc/bash.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

[[ $DISPLAY ]] && shopt -s checkwinsize

alias pa='sudo pacman'
alias sc='sudo systemctl'
alias sv='sudo vim'
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias xd='fortune -a | cowthink -f $(find /usr/share/cows -type f | shuf -n 1) | lolcat'
alias starwars='telnet towel.blinkenlights.nl | lolcat'
alias ti='sudo timedatectl set-ntp true'
alias sl+='sl -F -c | lolcat'
alias c='clear ; clear'
alias smi='sudo make install'
alias syu='sudo pacman -Sy && sudo powerpill -Su'
alias la="sl -F -c | lolcat"

shopt -s autocd
complete -c man
complete -cf sudo

PS1='[\u@\h \W]\$ '

case ${TERM} in
  xterm*|rxvt*|Eterm|aterm|kterm|gnome*)
    PROMPT_COMMAND=${PROMPT_COMMAND:+$PROMPT_COMMAND; }'printf "\033]0;%s@%s:%s\007" "${USER}" "${HOSTNAME%%.*}" "${PWD/#$HOME/\~}"'

    ;;
  screen*)
    PROMPT_COMMAND=${PROMPT_COMMAND:+$PROMPT_COMMAND; }'printf "\033_%s@%s:%s\033\\" "${USER}" "${HOSTNAME%%.*}" "${PWD/#$HOME/\~}"'
    ;;
esac

[ -r /usr/share/bash-completion/bash_completion ] && . /usr/share/bash-completion/bash_completion
