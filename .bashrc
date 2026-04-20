#
# ~/.bashrc
#

# Load special user directories env vars
[[ -f ~/.config/user-dirs.dirs ]] && . ~/.config/user-dirs.dirs
export XDG_DESKTOP_DIR
export EDITOR=nano

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# simple alias
alias ls='ls -1l -a --color=auto'
alias grep='grep --color=auto'

function mcdir
{
    mkdir $@ && cd $_
    return
}


function set_ps1
{
    local reset='\[\e[0m\]'
    local red='\[\e[31m\]'
    local green='\[\e[32m\]'
    local blue='\[\e[34m\]'
    local magenta='\[\e[35m\]'

    PS1="${blue}[\A] ${green}\u@${red}\s:${blue}\w${green} \$${reset}"
}
set_ps1
unset -f set_ps1

# helper function
function include
{
    [[ -f $1 ]] && . $1
    return
}

# defined functions
include ~/dotfiles/scripts/mkmv.sh
alias mvk='mkmv'

unset -f include

