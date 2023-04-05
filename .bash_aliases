# terminal
alias grep='grep --color=auto'
alias less='less -R'
alias ls='ls --color=auto'
alias l='ls'
alias ll='ls -lh'
alias lls='ls -lsh'
alias la='l -lAh'
alias c='clear'
alias srm='sudo rm'
repp(){
	range=$(seq $1)
	shift 1
	for i in $range; do
		"$@" &
	done
}
rep(){
	range=$(seq $1)
	shift 1
	for i in $range; do
		"$@"
	done
}

#python
alias act='source venv/bin/activate'
alias deact='deactivate'
alias py='ipython'
alias venv='python -m venv venv; pip install neovim > /dev/null; source venv/bin/activate'
alias pipi='pip install'
alias pipu='pip uninstall'
alias pipl='pip list'
alias pyserver='python -m http.server'

#php
alias phpserver='php -S localhost:8000'

# pacman
alias spu='sudo pacman -Syu'
alias sps='sudo pacman -Sy'
alias spss='sudo pacman -Ss'
alias sp='sudo pacman -S'
alias spr='sudo pacman -Rs'
alias spc='sudo pacman -Sc'
alias spcc='sudo pacman -Scc'
alias spi='pacman -Qi'
alias spqs='pacman -Qs'
alias spf='sudo pacman -Fy'
alias sprd='sudo pacman -Rs $(pacman -Qdtq)'
alias yrs='yay -Rs'
alias ys='yay -S'

#qemu
qresparse(){
	sudo mv $1 $1.bak
	sudo qemu-img convert -O qcow2 $1.bak $1
	sudo rm $1.bak
}
qresize(){
	sudo qemu-img resize "$1" "$2"
}
qconvert(){
	sudo qemu-img convert -f vmdk -O qcow2 "$1" "$2"
}

#mount
alias mountusb='udisksctl mount -b /dev/sda1'
alias unmountusb='udisksctl unmount -b /dev/sda1'

#disk
alias cfdiskn='sudo cfdisk /dev/nvme0n1'
alias duc='du -d 1 -h 2> /dev/null | sort -hr'

# open files
alias nv='nvim'
alias snv='sudo nvim'
alias em='emacs'
alias sem='sudo emacs'
alias bal='nvim ~/.bash_aliases'
alias src='source ~/.bash_aliases'
alias rc='nvim ~/.bashrc'
alias xin='nvim ~/.xinitrc'
alias history='cat ~/.bash_history'
pdf(){
	zathura "$1" & 
	sleep 1
	exit 
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
alias gcheck='git checkout'
alias ginit='git init'
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
alias gmod='git add -u'
alias gstash='git stash'
alias gpop='git stash pop'

# network
alias ncus='nmcli c up Sergeeva'
alias ncuh='nmcli c up Hot.spot'
alias ncue='nmcli c up Ether'
alias ncu='nmcli c up'
alias ncds='nmcli c down Sergeeva'
alias ncdh='nmcli c down Hot.spot'
alias ncde='nmcli c down Ether'
alias ncd='nmcli c down'
alias nscan='nmcli device wifi list'
alias nconw='nmcli --ask device wifi connect'
alias nconwso='nmcli --ask device wifi connect "SOFIA MALL"'
alias nconwsi='nmcli --ask device wifi connect SilpoLovesYou'
alias ncone='nmcli --ask device ethernet connect'

# web
alias get='curl -i'
alias getf='curl -O'
alias pubip="curl -s http://ifconfig.me/all | grep --color=never ip_addr | cut -d' ' -f 2"
cheat(){
	curl cheat.sh/$1 | less -R
}

#rss
alias new='newsboat'

# archive
alias untar='tar -xvf'
alias unzip='7z x'
alias unrar='unrar x'

# crypt
alias rot13="tr 'A-Za-z0-9' 'N-ZA-Mn-za-m3-90-3'"
b64d(){
	echo "$1" | base64 -d
}
b64e(){
	echo "$1" | base64
}
alias urldecode='python3 -c "import sys, urllib.parse as ul; print(ul.unquote_plus(sys.argv[1]))"'

alias urlencode='python3 -c "import sys, urllib.parse as ul; print (ul.quote_plus(sys.argv[1]))"'

#gdb
alias gdb='gdb -q'

#vpn
alias svpn='sudo openvpn'

# mpv
alias mpvs='mpv --shuffle'
alias mpvsl='mpv --shuffle --volume=20'
alias mpvslnv='mpv --shuffle --volume=20 --no-video'
alias mpvslna='mpv --shuffle --volume=20 --no-audio'

# config
alias sudo='sudo '
complete -c sudo man which openvpn
shopt -s autocd
shopt -s extglob
