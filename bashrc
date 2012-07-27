# bash completion suppport for core Git
#+ copy'n'pasted from /usr/share/bash-completion/git
. ~/.bash/git/git-completion.sh

# shows the status of the last command in prompt
. ~/.bash/prompt-show-status.bash

# shameless copied the gentoo baselayout /etc/bash/bashrc
# . ~/.bash/gentoo_bashrc

# part of the bash prompt telling on which
#+ git branch you are, if any
PS1_GIT='$(__git_ps1 ["%s"])'

# part of the bash prompt telling the result of last command.
PS1_STATUS='$(__bash_prompt_last $?)'

# bash prompt
PS1="\[\033[1;34m\]"$PS1_STATUS"[\$(date +%H%M)]"$PS1_GIT"[\u@\h:\w]$\[\033[0m\] "

# set vim as $EDITOR if available
if [ -f /usr/bin/vim ]; then
    EDITOR="/usr/bin/vim"
fi

# set bash in vi mode
set -o vi

# expand path to /sbin and /usr/sbin.
#+ it is more comfortable to write ifconfig than /usr/sbin/ifconfig.
#+ it does not hurt anyways.
PATH=/sbin:/usr/sbin:$PATH

# expand path to include wrapper scripts
#+ i do not want this scripts machine bound. The scripts should be user bound.
#+ Thus the scripts are in ~/.wrapper
PATH=$HOME/.wrapper:$PATH

# include aliases
source $HOME/.bash/alias

# set locale settings
source $HOME/.bash/locale

# export node modules folder
export NODE_PATH=/usr/lib/node_modules

# set vim as git pager
declare -x GIT_PAGER="vim - -R -c 'set foldmethod=syntax'"
