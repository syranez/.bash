# bash completion suppport for core Git
#+ copy'n'pasted from /usr/share/bash-completion/git
. ~/.bash/git/git-completion.sh

# part of the bash prompt telling on which
#+ git branch you are, if any
PS1_GIT='$(__git_ps1 ["%s"])'

# bash prompt
PS1="\[\033[1;34m\][\$(date +%H%M)]"$PS1_GIT"[\u@\h:\w]$\[\033[0m\] "

# set vim as $EDITOR if available
if [ -f /usr/bin/vim ]; then
    EDITOR="/usr/bin/vim"
fi

# set bash in vi mode
set -o vi
