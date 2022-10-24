# terminal
alias ls='ls --color=auto'
alias la='ls -la'

#pkill
alias pd='pkill Discord'

#python
alias act='source venv/bin/activate'
alias dact='deactivate'

# pacman
alias spu='sudo pacman -Syu'
alias sps='sudo pacman -Sy'
alias sp='sudo pacman -S'
alias spr='sudo pacman -Rs'
alias spc='sudo pacman -Sc'
alias spcc='sudo pacman -Scc'
alias spi='pacman -Qs'
alias spf='sudo pacman -Fy'
alias yrs='yay -Rs'
alias ys='yay -S'

# open files
alias nv='nvim'
alias snv='sudo nvim'
alias bal='nvim ~/.bash_aliases'
alias src='source ~/.bash_aliases'
alias rc='nvim ~/.bashrc'
alias xin='nvim ~/.xinitrc'
alias history='cat ~/.bash_history'
pdf(){
	zathura "$1" & exit 
}
alias zat='zathura'

# system
alias r='reboot'
alias p='poweroff'
alias sys='neofetch'

# patching
alias mci='sudo make clean install'

# services
alias netrestart='systemctl restart NetworkManager'

# git
alias clone='git clone'
alias gits='git status'
alias branch='git branch'
alias chout='git checkout'
alias gitap='git apply'
alias comm='git commit'
alias merge='git merge'
alias gitad='git add'
alias gdiff='git diff'

# network
alias ncus='nmcli c up Sergeeva'

# web
alias get='curl -i'
alias getf='curl -O'

# archive
alias untar='tar -xvf'
alias unzip='7z e'

# crypt
alias rot13="tr 'A-Za-z0-9' 'N-ZA-Mn-za-m3-90-3'"

# config
complete -c sudo man which
shopt -s autocd
