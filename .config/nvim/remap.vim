"leader"
let mapleader = ","
let localleader = "<space>"

"i esc"
inoremap jk <esc>
inoremap <esc> <nop>

"i autocompletion"
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap { {}<left>
inoremap [ []<left>
inoremap < <><left>


"n folding"
nnoremap fm zm
nnoremap ffm zM
nnoremap fo zo
nnoremap ffo zO
nnoremap fr zr
nnoremap ffr zR
nnoremap fc zc
nnoremap ffc zC

"i movement"
inoremap <c-j> <down>
inoremap <c-k> <up>
inoremap <c-h> <left>
inoremap <c-l> <right>

"n upper lower"
nnoremap + viwU
nnoremap - viwu

"n wrapper"
" so bad
nnoremap " viw<esc>a"<esc>hbi"<esc>lel
nnoremap ' viw<esc>a'<esc>hbi'<esc>lel
nnoremap [ viw<esc>a]<esc>hbi[<esc>lel
nnoremap { viw<esc>a}<esc>hbi{<esc>lel
nnoremap ( viw<esc>a)<esc>hbi(<esc>lel

"n comment"
nnoremap # 0i#<esc>

"n movement"
nnoremap H 0
nnoremap L $
nnoremap K gg
nnoremap J G

"n lines"
nnoremap <c-j> gJ
nnoremap <c-k> kgJ
nnoremap <c-h> kdd
nnoremap <c-l> jddk

"i dd"
inoremap <c-d> <esc>ddi

"i esc"
inoremap jk <esc>

"i func"
inoremap <c-p> (){<cr>}<esc>ko

"vin split"
inoremap <c-w> <esc><c-w><c-w>
nnoremap <c-w> <c-w><c-w>
vnoremap <c-w> <c-w><c-w>

"v comment"
vnoremap # :s/^/#/<cr>
vnoremap ( di()<esc>hp
vnoremap [ di[]<esc>hp
vnoremap { di{}<esc>hp
vnoremap ' di''<esc>hp
vnoremap " di""<esc>hp
vnoremap < di<><esc>hp

"n tab"
noremap <tab> >>
noremap <s-tab> <<

"n conf"
nnoremap <leader>sv :source ~/.config/nvim/remap.vim<cr>
nnoremap <leader>ev :vsplit ~/.config/nvim/remap.vim<cr>
nnoremap <leader>co :vsplit ~/.config/nvim/config.vim<cr>
nnoremap <leader>pl :vsplit ~/.config/nvim/plugins.vim<cr>

"n save or quit"
nnoremap <leader>q :q!<cr>
nnoremap <leader>w :w!<cr>
nnoremap <leader>x :x!<cr>

"n web"
nnoremap <c-s> :w<cr> :!xdotool search --onlyvisible --class Firefox key F5<cr><cr>

"abbrev"
iabbrev __name if __name__ == <c-v>'__main__<c-v>':<cr><tab>main(<right>

"autocmd"
autocmd FileType python nnoremap <buffer> <leader>c I#<esc>
autocmd FileType python map <buffer> <F9> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <F9> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType c map <buffer> <F9> :w<CR>:exec '!gcc' shellescape(@%, 1)<CR>:!./a.out<cr>
autocmd FileType c imap <buffer> <F9> <esc>:w<CR>:exec '!gcc' shellescape(@%, 1)<CR>:!./a.out<cr>
autocmd BufNewFile *.html 0r /home/blank/.config/nvim/templates/html.skel
