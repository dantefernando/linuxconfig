# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)

# HISTSIZE=10000000
# HISTFILESIZE=10000000

# "Infinite" bash history file size 
HISTSIZE= HISTFILESIZE= 


# enable color support of ls and also add aliases
# if [ -x /usr/bin/dircolors ]; then
#     test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
alias ls='ls -h --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'
# fi




# === Custom Bash Commands added by Dante === #
# ===================================== #

# Change program output for programs:
alias diff='diff --color'

# Sets to terminal to vi mode
set -o vi  

# some ls aliases
alias ll='ls -alhF --color'
alias la='ls -A'
alias l='ls -CF'

# Alias for sudo to execute the doas command instead
# alias sudo='doas'


# When exiting ranger, the user will be cd'd into the dir that they were in
alias r='ranger --choosedir=$HOME/.config/ranger/.rangerdir; LASTDIR=`cat $HOME/.config/ranger/.rangerdir`; cd "$LASTDIR"'
alias ranger='ranger --choosedir=$HOME/.config/ranger/.rangerdir; LASTDIR=`cat $HOME/.config/ranger/.rangerdir`; cd "$LASTDIR"'


# suckless -----------

# alias sck='cd ~/programs/suckless'
# alias sckdwm='cd ~/programs/suckless/dwm'
# alias sckdwmc='cd ~/programs/suckless/dwm && con'

# alias sckst='cd ~/programs/suckless/st'
# alias sckstc='cd ~/programs/suckless/st && con'

# alias sckdmenu='cd ~/programs/suckless/dmenu'
# alias sckdmenuc='cd ~/programs/suckless/dmenu && con'

# alias sckdwmb='cd ~/programs/suckless/dwmblocks'
# alias sckdwmbc='cd ~/programs/suckless/dwmblocks && con'


alias fs='cd ~/programs/suckless'
alias fdwm='cd ~/programs/suckless/dwm'
alias cdwm='cd ~/programs/suckless/dwm && con'

alias fst='cd ~/programs/suckless/st'
alias cst='cd ~/programs/suckless/st && con'

alias fdmenu='cd ~/programs/suckless/dmenu'
alias cdmenu='cd ~/programs/suckless/dmenu && con'

alias fdwmb='cd ~/programs/suckless/dwmblocks'
alias cdwmb='cd ~/programs/suckless/dwmblocks && con'


alias fsb="cd ~/.local/bin/statusbar && ll"

alias fd='cd ~/personal/documents/'
# ---------------------

############ FOLDERS ###############

alias fps='cd ~/personal/'
alias fgh='cd ~/personal/documents/github'
alias fd='cd ~/personal/documents'
alias fwin='cd /mnt/hdd'
alias fonts='cd /usr/share/fonts && ls -lsah'
alias fp='cd ~/personal/pictures'
alias fv='cd ~/personal/videos/'

# alias gh='cd ~/personal/documents/github'
alias hdd='cd /mnt/hdd'
alias fonts='cd /usr/share/fonts && ls -lsah'
alias pics='cd ~/personal/pictures'
alias vids='cd ~/personal/videos/'
alias picsfm='cd ~/personal/pictures/screenshots && pcmanfm'

# edits the config files with root permissions for suckless utils
alias con='nvim config.h'

# Volume mixer for pulseaudio
alias vol='pulsemixer'

# Cam settings
alias cam='qv4l2'

# linuxconfig git repo
alias lx='cd ~/personal/documents/github/linuxconfig'

# Unix Elitism Flex LOL
alias genius='curl -L https://git.io/unix && echo'

# Print public ip address to standard output
alias getip='curl -s https://icanhazip.com'

getLocalIP() {
    ip a | awk '/192.168/ {print $2}'
}

# Print local ip address to stdout
alias getlip="getLocalIP"

# opens README.pdf file in the working directory with zathura 
alias zr='~/.local/bin/openREADME'

# open tty-clock with 4th color (pink)
alias tty-clock='tty-clock -C 4'

alias xc='doas nvim /etc/X11/xorg.conf'

alias kb='xset r rate 200 100'
alias kbt='systemctl --user restart touchcursor && kb'

# alias cq='curl -s https://am.i.mullvad.net/port/60134 && echo'
alias cq='curl -s https://am.i.mullvad.net/port/55708 && echo'

alias win='cd /mnt/windows'

alias t7='cd /run/media/dante/T7/'
alias sghdd='cd /run/media/dante/SGHDD/'
alias iphone='cd /run/user/1000/gvfs/'

alias sch='cd ~/personal/documents/github/'
alias z='zathura'

alias csal='cd ~/personal/documents/github/CS-AL/'

alias sx='startx'

alias weather='curl wttr.in/Voorschoten'

# Opens my timetable for school
# alias tt='zathura ~/personal/documents/school/gcse/timetable.pdf'

# runs mc server

# alias mcserver='cd ~/downloads/Minecraft/ && ~/downloads/jdk-16.0.1/bin/java -Xmx14G -Xms10G -server -jar minecraft_server.jar nogui'
alias mcserver='~/downloads/jdk-16.0.1/bin/java -Xmx14G -Xms10G -server -jar minecraft_server.jar nogui'

alias sshsp='ssh -p 13371 dante@192.168.2.40'
alias sshm='ssh -p 13373 dante@192.168.2.170'

alias rdwmb='killall -q dwmblocks;setsid dwmblocks &'

# Start barrier for server
alias sbs='barriers --config ~/.config/barrier/server.conf --disable-crypto'
# Start barrier for client
alias sbc='barrierc --name archsp --disable-crypto 192.168.178.130'


# Adds statusbar scripts to $PATH 
export PATH=~/.local/scripts/statusbar/:$PATH
export PATH=~/.local/scripts/screencapture/:$PATH

# Personal scripts
export PATH=~/.local/scripts/:$PATH

export PATH=~/.local/bin/:$PATH

alias ms='mullvad status'
alias mc='mullvad connect && echo "connecting.."'
alias md='mullvad disconnect && echo "disconnecting"'

alias sam='udisksctl mount -b /dev/sdb1'
alias dsam='udisksctl unmount -b /dev/sdb1 && udisksctl power-off -b /dev/sdb'

# PS1 Bash Prompt. Looks like: [dante@archbox ~]$

# Pink and Blue
# PS1="[\[$(tput sgr0)\]\[$(tput bold)\]\[\033[38;5;1m\]\u\[$(tput sgr0)\]@\[$(tput sgr0)\]\[\033[38;5;56m\]\h\[$(tput sgr0)\] \[$(tput sgr0)\]\[$(tput bold)\]\[\033[38;5;9m\]\W\[$(tput sgr0)\]]\[$(tput sgr0)\]\[$(tput bold)\]\[\033[38;5;11m\]\$(git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/')\[$(tput sgr0)\]\\[$(tput bold)\]\[\033[38;5;9m\]\$\[$(tput sgr0)\] "

# Pink on Pink
# PS1="[\[$(tput sgr0)\]\[$(tput bold)\]\[\033[38;5;211m\]\u\[$(tput sgr0)\]@\[$(tput sgr0)\]\[\033[38;5;205m\]\h\[$(tput sgr0)\] \[$(tput sgr0)\]\[$(tput bold)\]\[\033[38;5;204m\]\W\[$(tput sgr0)\]]\[$(tput sgr0)\]\[$(tput bold)\]\[\033[38;5;11m\]\$(git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/')\[$(tput sgr0)\]\\[$(tput bold)\]\[\033[38;5;9m\]\$\[$(tput sgr0)\] \[$(tput sgr0)\]"

# Red on Red
PS1="[\[$(tput sgr0)\]\[$(tput bold)\]\[\033[38;5;9m\]\u\[$(tput sgr0)\]@\[$(tput sgr0)\]\[\033[38;5;124m\]\h\[$(tput sgr0)\] \[$(tput sgr0)\]\[$(tput bold)\]\[\033[38;5;9m\]\W\[$(tput sgr0)\]]\[$(tput sgr0)\]\[$(tput bold)\]\\[\033[38;5;11m\]\$(git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/')\[$(tput sgr0)\]\\[$(tput bold)\]\\[\033[38;5;9m\]\$\[$(tput sgr0)\] \[$(tput sgr0)\]"



