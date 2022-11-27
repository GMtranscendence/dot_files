#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

source ~/.bash_aliases
wmname LG3D
export PATH=$HOME/.scripts:$PATH
export NETHACKOPTIONS="$HOME/.config/nethack/nethackrc"

# colors
NAVY="\[$(tput setaf 45)\]"
RED="\[$(tput setaf 196)\]"
GREEN="\[$(tput setaf 10)\]"
YELLOW="\[$(tput setaf 11)\]"
BLUE="\[$(tput setaf 4)\]"
PURPLE="\[$(tput setaf 171)\]"
RESET="\[$(tput sgr0)\]"

PS1='\[$(tput setaf 11)\][\[$(tput setaf 196)\]\u \[$(tput setaf 10)\]\w\[$(tput setaf 11)\]] \[$(tput setaf 45)\]> \[$(tput sgr0)\]'
