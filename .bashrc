#
# ~/.bashrc
#

# Load special user directories env vars
[[ -f ~/.config/user-dirs.dirs ]] && . ~/.config/user-dirs.dirs
export XDG_DESKTOP_DIR
export EDITOR=nano

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

## THEME ##
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


## ENV VARS ##
projectDirs=$(dir "$XDG_DESKTOP_DIR/projects")
for v in ${projectDirs}; do
    CDPATH="${CDPATH}${CDPATH+:}$XDG_DESKTOP_DIR/projects/$v"
done
unset projectDirs


## ALIAS ##
alias ls='ls -1l -a --color=auto'
alias grep='grep --color=auto'

[[ -f "~/dotfiles/scripts/interactive.sh" ]] && . "~/dotfiles/scripts/interactive.sh"
