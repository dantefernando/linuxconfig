# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=10000000
HISTFILESIZE=10000000


# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'
fi




# === Custom Bash Commands added by Dante === #
# ===================================== #

# Sets to terminal to vi mode
set -o vi  

# some ls aliases
alias ll='ls -alF --color'
alias la='ls -A'
alias l='ls -CF'


# suckless -----------

alias sck='cd ~/suckless'
alias sckdwm='cd ~/suckless/dwm'
alias sckst='cd ~/suckless/st'
alias sckdmenu='cd ~/suckless/dmenu'
alias sckdwmb='cd ~/suckless/dwmblocks'
alias dwmbs="cd /usr/bin/ && ll | grep -i sb-"

# ---------------------

# cd Personal
alias ps='cd ~/Personal/'

# cd ~/Personal/github
alias gh='cd ~/Personal/github'

# cd's to hdd
alias hdd='cd /mnt/hdd'

# Go to fonts folder
alias fonts='cd /usr/share/fonts && ls -lsa'

# Go to screenshots folder
alias scrn='cd ~/Personal/Pictures/screenshots'

# Go to screenshots folder and open pcmanfm
alias scrnfm='cd ~/Personal/Pictures/screenshots && pcmanfm'

# edits the config files with root permissions for suckless utils
alias con='sudo nvim config.h'

# Volume mixer for pulseaudio
alias vol='pulsemixer'

# Adds statusbar scripts to $PATH 
export PATH=~/.local/bin/statusbar/:$PATH
export PATH=~/.local/bin/:$PATH


# PS1 Bash Prompt
PS1="[\[$(tput sgr0)\]\[$(tput bold)\]\[\033[38;5;1m\]\u\[$(tput sgr0)\]@\[$(tput sgr0)\]\[\033[38;5;56m\]\h\[$(tput sgr0)\] \[$(tput sgr0)\]\[$(tput bold)\]\[\033[38;5;9m\]\W\[$(tput sgr0)\]]\[$(tput sgr0)\]\[$(tput bold)\]\[\033[38;5;14m\]\\$\[$(tput sgr0)\] "

