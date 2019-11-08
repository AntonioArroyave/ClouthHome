# ~/.bashrc: executed by bash(1) for non-login shells.

# Note: PS1 and umask are already set in /etc/profile. You should not
# need this unless you want different defaults for root.
# PS1='${debian_chroot:+($debian_chroot)}\h:\w\$ '
# umask 022

# You may uncomment the following lines if you want `ls' to be colorized:
 export LS_OPTIONS='--color=auto'
 eval "`dircolors`"
 alias ls='ls $LS_OPTIONS'
 alias ll='ls $LS_OPTIONS -l'
 alias l='ls $LS_OPTIONS -lA'

# Some more alias to avoid making mistakes:
# alias rm='rm -i'
# alias cp='cp -i'
# alias mv='mv -i'

#for render de screen
alias render='xrandr -s 1680x1050'
alias renderm='xrandr -s 1360x768'

#Alias for open files
alias openI3cnfg="vim /etc/i3/config"
alias bashrc='vim ~/.bashrc'
alias vimrc='vim ~/.vimrc'

#Refresh alias
alias refreshBash='sh .bashrc'

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/root/SimbioticLoop/google-cloud-sdk/path.bash.inc' ]; then . '/root/SimbioticLoop/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/root/SimbioticLoop/google-cloud-sdk/completion.bash.inc' ]; then . '/root/SimbioticLoop/google-cloud-sdk/completion.bash.inc'; fi

#Config custom varibles
export rcorreo=rafaelbarrientosarroyave@gmail.com
export ccorre=rafael.barrientos@ceiba.com
export Clouth_Home=/home/ClouthHome

#Alias for change java home
export JAVA17_HOME=/usr/lib/jvm/java-1.7.79
export JAVA18_HOME=/usr/lib/jvm/java-1.8.0-openjdk-i386
alias java17='export JAVA_HOME=$JAVA17_HOME'
alias java18='export JAVA_HOME=$JAVA18_HOME'
