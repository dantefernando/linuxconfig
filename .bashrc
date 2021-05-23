# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)

# HISTSIZE=10000000
# HISTFILESIZE=10000000

# "Infinite" bash history file size 
HISTSIZE= HISTFILESIZE=


# enable color support of ls and also add aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls -h --color=auto'
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
alias ll='ls -alhF --color'
alias la='ls -A'
alias l='ls -CF'

alias sudo='doas'

# When exiting ranger, the user will be cd'd into the dir that they were in
alias ranger='ranger --choosedir=$HOME/.config/ranger/.rangerdir; LASTDIR=`cat $HOME/.config/ranger/.rangerdir`; cd "$LASTDIR"'


# suckless -----------

alias sck='cd ~/suckless'
alias sckdwm='cd ~/suckless/dwm'
alias sckdwmc='cd ~/suckless/dwm && con'

alias sckst='cd ~/suckless/st'
alias sckstc='cd ~/suckless/st && con'

alias sckdmenu='cd ~/suckless/dmenu'
alias sckdmenuc='cd ~/suckless/dmenu && con'

alias sckdwmb='cd ~/suckless/dwmblocks'
alias sckdwmbc='cd ~/suckless/dwmblocks && con'

alias dwmbs="cd ~/.local/bin/statusbar && ll | grep -i sb-"

# ---------------------

# cd Personal
alias ps='cd ~/personal/'

# cd ~/Personal/github
alias gh='cd ~/personal/documents/github'

# cd's to hdd
alias hdd='cd /mnt/hdd'

# Go to fonts folder
alias fonts='cd /usr/share/fonts && ls -lsah'

# Go to screenshots folder
alias pics='cd ~/personal/pictures'

alias vids='cd ~/personal/videos/'

# Go to screenshots folder and open pcmanfm
alias picsfm='cd ~/personal/pictures/screenshots && pcmanfm'

# edits the config files with root permissions for suckless utils
alias con='doas nvim config.h'

# Volume mixer for pulseaudio
alias vol='pulsemixer'

# linuxconfig git repo
alias lx='cd ~/personal/documents/github/linuxconfig'

# opens README.pdf file in the working directory with zathura 
alias zr='zathura README.pdf'

# Adds statusbar scripts to $PATH 
export PATH=~/.local/bin/statusbar/:$PATH
export PATH=~/.local/bin/:$PATH


# PS1 Bash Prompt. Looks like: [dante@archbox ~]$
PS1="[\[$(tput sgr0)\]\[$(tput bold)\]\[\033[38;5;1m\]\u\[$(tput sgr0)\]@\[$(tput sgr0)\]\[\033[38;5;56m\]\h\[$(tput sgr0)\] \[$(tput sgr0)\]\[$(tput bold)\]\[\033[38;5;9m\]\W\[$(tput sgr0)\]]\[$(tput sgr0)\]\[$(tput bold)\]\[\033[38;5;14m\]\\$\[$(tput sgr0)\] "

