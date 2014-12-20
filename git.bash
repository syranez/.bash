# bash completion and prompt for git.
#

# bash completion suppport for core Git
#+ copy'n'pasted from https://github.com/git/git/tree/master/contrib/completion
. ~/.bash/git/git-completion.bash
. ~/.bash/git/git-prompt.sh

# part of the bash prompt telling on which
#+ git branch you are, if any
PS1_GIT='$(__git_ps1 "(%s)")'
