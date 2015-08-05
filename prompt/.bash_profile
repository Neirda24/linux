# .bash_profile
###

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

if [ -f ~/.bin/tmuxinator.bash ]; then
	. ~/.bin/tmuxinator.bash
fi

PATH=$PATH:$HOME/bin
PATH=$PATH:$HOME/phpstorm/bin
PATH=$PATH:$HOME/shells

export PATH

if [ -f ~/.bash_vars ]; then
	. ~/.bash_vars
	function color_my_prompt {

        local __time="\[\033[01;35m\][$(date "+%d/%m/%y %T")]"

        local __user_and_host="\[\033[01;32m\]\u@\h"

        local __cur_location="\[\033[01;34m\]\w"

        local __git_branch_color="\[\033[31m\]"

        local __git_branch='`git branch 2> /dev/null | grep -e ^* | sed -E  s/^\\\\\*\ \(.+\)$/\ \(\\\\\1\)/`'

        local __prompt_tail="\[\033[35m\]$"

        local __last_color="\[\033[00m\]"

        export PS1="\n$__time $__user_and_host$__git_branch_color$__git_branch: $__cur_location $__last_color\n\$ "

    }

    color_my_prompt
fi

export EDITOR='vim'

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi
