# const
HISTFILE=~/.histfile
HISTSIZE=5000
SAVEHIST=5000

# conf
setopt autocd extendedglob no_nomatch
bindkey -v
zstyle :compinstall filename '/home/blank/.zshrc'
autoload -Uz compinit
zstyle ':completion:*' menu select
compinit

# java fix
wmname LG3D

# export
export SHELL=/bin/zsh
export PATH=$HOME/.local/bin:$HOME/.scripts:$PATH
export NETHACKOPTIONS="$HOME/.config/nethack/nethackrc"
export EDITOR="/usr/bin/nvim"

# colors
NAVY="45"
RED="196"
GREEN="10"
YELLOW="11"
BLUE="4"
PURPLE="171"
RESET="0"

PS1='%F{11}[%F{196}%n %F{10}%~%F{11}] %F{45}> %F{255}'

# aliases 
source $HOME/.zshal
