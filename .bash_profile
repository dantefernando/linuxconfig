#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc
[[ $(w | awk '/user/ {print $5}') == 1 ]] && [[ -f ~/.xinitrc ]] && startx

export GPG_TTY=$(tty)
export EDITOR="nvim"
export READER="zathura"
export TERMINAL="st"
export BROWSER="firefox"
