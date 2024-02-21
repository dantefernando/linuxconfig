#
# ~/.bash_profile
#


[[ -f ~/.bashrc ]] && . ~/.bashrc

export GPG_TTY=$(tty)
export EDITOR="nvim"
export READER="zathura"
export TERMINAL="st"
export BROWSER="firefox"
export _JAVA_AWT_WM_NONREPARENTING=1

# [[ $(w | awk '/user/ {print $5}') == 1 ]] && [[ -f ~/.xinitrc ]] && startx

