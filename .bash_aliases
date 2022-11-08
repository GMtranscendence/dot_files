# terminal
alias ls='ls --color=auto'
alias l='ls'
alias la='l -la'
alias c='clear'

#python
alias act='source venv/bin/activate'
alias deact='deactivate'
alias py='python'
alias venv='python -m venv venv'
alias pipi='pip install'

# pacman
alias spu='sudo pacman -Syu'
alias sps='sudo pacman -Sy'
alias spss='sudo pacman -Ss'
alias sp='sudo pacman -S'
alias spr='sudo pacman -Rs'
alias spc='sudo pacman -Sc'
alias spcc='sudo pacman -Scc'
alias spi='pacman -Qs'
alias spf='sudo pacman -Fy'
alias sprd='sudo pacman -Rs $(pacman -Qdtq)'
alias yrs='yay -Rs'
alias ys='yay -S'

#mount
alias mountusb='udisksctl mount -b /dev/sda1'
alias unmountusb='udisksctl unmount -b /dev/sda1'

#disk
alias cfdiskn='sudo cfdisk /dev/nvme0n1'

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
alias systart='sudo systemctl start'
alias systop='sudo systemctl stop'
alias sysen='sudo systemctl enable'
alias systatus='sudo systemctl status'
alias sysrestart='sudo systemctl restart'

# git
alias gclone='git clone'
alias gstat='git status'
alias gbranch='git branch'
alias gchout='git checkout'
alias gapply='git apply'
alias gcomm='git commit'
alias gmerge='git merge'
alias gadd='git add'
alias gdiff='git diff'
alias glog='git log --oneline'
alias gpush='git push'
alias gpull='git pull'

# network
alias ncus='nmcli c up Sergeeva'
alias ncu='nmcli c up'
alias ncds='nmcli c down Sergeeva'
alias ncd='nmcli c down'
alias nscan='nmcli device wifi list'
alias ncon='nmcli --ask device wifi connect'

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
