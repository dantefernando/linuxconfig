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
# alias sckdwm='cd ~/programs/suckless/dwmNoTitle'
# alias sckdwmc='cd ~/programs/suckless/dwmNoTitle && con'

# alias sckst='cd ~/programs/suckless/st'
# alias sckstc='cd ~/programs/suckless/st && con'

# alias sckdmenu='cd ~/programs/suckless/dmenu'
# alias sckdmenuc='cd ~/programs/suckless/dmenu && con'

# alias sckdwmb='cd ~/programs/suckless/dwmblocks'
# alias sckdwmbc='cd ~/programs/suckless/dwmblocks && con'


alias fs='cd ~/programs/suckless'
alias fdwm='cd ~/programs/suckless/dwmNoTitle'
alias cdwm='cd ~/programs/suckless/dwmNoTitle && con'

alias fst='cd ~/programs/suckless/st'
alias cst='cd ~/programs/suckless/st && con'

alias fdmenu='cd ~/programs/suckless/dmenu'
alias cdmenu='cd ~/programs/suckless/dmenu && con'

alias fdwmb='cd ~/programs/suckless/dwmblocks'
alias cdwmb='cd ~/programs/suckless/dwmblocks && con'


alias fsb="cd ~/.local/bin/statusbar && ll"

alias fd='cd ~/personal/documents/'

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
alias con='nvim config.h'

# Volume mixer for pulseaudio
alias vol='pulsemixer'

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

alias t7='cd /run/media/dante/T7'

alias sch='cd ~/personal/documents/github/'

alias csal='cd ~/personal/documents/github/CS-AL/'

alias sx='startx'

alias weather='curl wttr.in'

startxdisconnect() {

[[ $(mullvad status | awk '{print $3}') == "Disconnected" ]] || mullvad disconnect && startx

}

alias ssx='startxdisconnect'
alias sshsp='ssh -p 13371 dante@192.168.178.129'

# Opens my timetable for school
# alias tt='zathura ~/personal/documents/school/gcse/timetable.pdf'

# runs mc server

# alias mcserver='cd ~/downloads/Minecraft/ && ~/downloads/jdk-16.0.1/bin/java -Xmx14G -Xms10G -server -jar minecraft_server.jar nogui'
alias mcserver='~/downloads/jdk-16.0.1/bin/java -Xmx14G -Xms10G -server -jar minecraft_server.jar nogui'

alias sam='udisksctl mount -b /dev/sda1'
alias dsam='udisksctl unmount -b /dev/sda1 && udisksctl power-off -b /dev/sda'

# Adds statusbar scripts to $PATH 
export PATH=~/.local/bin/statusbar/:$PATH
export PATH=~/.local/bin/screencapture/:$PATH

# Personal scripts
export PATH=~/.local/bin/scripts/:$PATH

export PATH=~/.local/bin/:$PATH


# PS1 Bash Prompt. Looks like: [dante@archbox ~]$

# Pink and Blue
# PS1="[\[$(tput sgr0)\]\[$(tput bold)\]\[\033[38;5;1m\]\u\[$(tput sgr0)\]@\[$(tput sgr0)\]\[\033[38;5;56m\]\h\[$(tput sgr0)\] \[$(tput sgr0)\]\[$(tput bold)\]\[\033[38;5;9m\]\W\[$(tput sgr0)\]]\[$(tput sgr0)\]\[$(tput bold)\]\[\033[38;5;11m\]\$(git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/')\[$(tput sgr0)\]\\[$(tput bold)\]\[\033[38;5;9m\]\$\[$(tput sgr0)\] "

# Pink on Pink
# PS1="[\[$(tput sgr0)\]\[$(tput bold)\]\[\033[38;5;211m\]\u\[$(tput sgr0)\]@\[$(tput sgr0)\]\[\033[38;5;205m\]\h\[$(tput sgr0)\] \[$(tput sgr0)\]\[$(tput bold)\]\[\033[38;5;204m\]\W\[$(tput sgr0)\]]\[$(tput sgr0)\]\[$(tput bold)\]\[\033[38;5;11m\]\$(git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/')\[$(tput sgr0)\]\\[$(tput bold)\]\[\033[38;5;9m\]\$\[$(tput sgr0)\] \[$(tput sgr0)\]"

# Red on Red
PS1="[\[$(tput sgr0)\]\[$(tput bold)\]\[\033[38;5;9m\]\u\[$(tput sgr0)\]@\[$(tput sgr0)\]\[\033[38;5;124m\]\h\[$(tput sgr0)\] \[$(tput sgr0)\]\[$(tput bold)\]\[\033[38;5;9m\]\W\[$(tput sgr0)\]]\[$(tput sgr0)\]\[$(tput bold)\]\\[\033[38;5;11m\]\$(git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/')\[$(tput sgr0)\]\\[$(tput bold)\]\\[\033[38;5;9m\]\$\[$(tput sgr0)\] \[$(tput sgr0)\]"

