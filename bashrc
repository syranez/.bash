# bash utilitys for git
. ~/.bash/git.bash

# shows the status of the last command in prompt
. ~/.bash/prompt-show-status.bash

# helper script to activate chrome remote debugging
. ~/.bash/adb.bash

# shameless copied the gentoo baselayout /etc/bash/bashrc
# . ~/.bash/gentoo_bashrc

# part of the bash prompt telling the result of last command.
PS1_STATUS='$(__bash_prompt_last $?)'

# bash prompt
PS1="\[\033[1;34m\]"$PS1_STATUS$PS1_GIT"[\$(date +%H:%M)][\u@\h:\w]$\[\033[0m\] "

# set vim as $EDITOR if available
if [ -f /usr/bin/vim ]; then
    EDITOR="/usr/bin/vim"
fi

# set bash in vi mode
set -o vi

# remove flow control
stty -ixon

# do not overwrite existing files
#+ you can always overwrite files with >| if you are sure
#+ but I prefer removing the file in first place
set -o noclobber

# Bash won't get SIGWINCH if another process is in the foreground.
# Enable checkwinsize so that bash will check the terminal size when
# it regains control.  #65623
# http://cnswww.cns.cwru.edu/~chet/bash/FAQ (E11)
shopt -s checkwinsize

# Enable history appending instead of overwriting.  #139609
shopt -s histappend

# expand path to /sbin and /usr/sbin.
#+ it is more comfortable to write ifconfig than /usr/sbin/ifconfig.
#+ it does not hurt anyways.
PATH=/sbin:/usr/sbin:$PATH

# expand path to include executable files
#+ i do not want this files machine bound. The files should be user bound.
#+ Thus the files are in ~/.bin
PATH=$HOME/.bin:$PATH

# expand path to include wrapper scripts
#+ i do not want this scripts machine bound. The scripts should be user bound.
#+ Thus the scripts are in ~/.wrapper
PATH=$HOME/.wrapper:$PATH

# include aliases
source $HOME/.bash/alias

# set locale settings
source $HOME/.bash/locale

# os specific stuff
source $HOME/.bash/osx

# export node modules folder
export NODE_PATH=/usr/lib/node_modules
