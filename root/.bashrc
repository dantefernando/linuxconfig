alias ll='ls -lsa --color'
alias ls='ls --color'

set -o vi

PS1="\[$(tput bold)\]\[\033[38;5;223m\][\[$(tput sgr0)\]\[\033[38;5;88m\]\[$(tput bold)\]\u\[$(tput sgr0)\]@\[$(tput sgr0)\]\[\033[38;5;99m\]\h\[$(tput sgr0)\] \[$(tput sgr0)\]\[$(tput bold)\]\[\033[38;5;9m\]\W\[$(tput sgr0)\]\[$(tput bold)\]\[\033[38;5;223m\]]\[$(tput sgr0)\]\[\033[38;5;9m\]\\$\[$(tput sgr0)\] \[$(tput sgr0)\]"
