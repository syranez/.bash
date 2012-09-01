# syranez' bashconfig

## Installation

        cd ~/
        git@github.com:syranez/.bash.git
        edit ~/.bashrc and paste on top:

            if [[ -f ~/.bash/bashrc ]]; then
                . ~/.bash/bashrc
            fi
## Documentation

### alias file

The alias file is sourced by bashrc. It defines currently an alias for jshint.

### Benefits

1. English locale in LANG (man pages)
1. C-Ordering LC_COLLATE
1. Bash prompt
    1.Shows the current branch if cwѕ is versionized by git.
    1.Shows the status of the last invoked command.
1. You will never overwrite an existing file with the > operator.

## Dependencys

1. For the alias jshint nodejs, npm and jshint have to be installed.
