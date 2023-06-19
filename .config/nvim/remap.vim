"leader"
let mapleader = ","
let localleader = "<space>"

"conceal level"
nnoremap <leader>sc0 :set cole=0<cr>
nnoremap <leader>sc2 :set cole=2<cr>

"term"
tnoremap <c-n> <c-\><c-n>
tnoremap <c-e> exit<cr><cr>

"term start"
nnoremap <leader>te :term<cr>

"i esc"
inoremap jk <esc>

"i autocompletion"
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap { {}<left>
inoremap [ []<left>
"inoremap < <><left>

"buffers"
nnoremap <leader>l :ls<cr>:b<space>

"emmet"
let g:user_emmet_leader_key=","
"let g:user_emmet_mode="n"

"md"
let g:vim_markdown_folding_disabled = 1

"let g stuff"
let g:neocomplete#enable_at_startup = 1

"n folding"
nnoremap fm zm
nnoremap ffm zM
nnoremap fo zo
nnoremap ffo zO
nnoremap fr zr
nnoremap ffr zR
nnoremap fc zc
nnoremap ffc zC
autocmd BufRead * vnoremap <buffer> f{ c<esc>0i{{{<cr><esc>:set paste<cr>a<c-r>"<esc>:set nopaste<cr>a}}}<esc>k$
autocmd FileType python vnoremap <buffer> f{ c<esc>0i#{{{<cr><esc>:set paste<cr>a<c-r>"<esc>:set nopaste<cr>a#}}}<esc>k$
autocmd FileType asm vnoremap <buffer> f{ c<esc>0i;{{{<cr><esc>:set paste<cr>a<c-r>"<esc>:set nopaste<cr>a;}}}<esc>k$

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

"n lines"
nnoremap <c-j> gJ
nnoremap <c-k> kgJ
nnoremap <c-h> kdd
nnoremap <c-l> jddk
nnoremap <leader>O O<esc>j
nnoremap <leader>o o<esc>k

"i dd"
inoremap <c-d> <esc>ddi

"i esc"
inoremap jk <esc>

"i func"
inoremap <c-p> {<cr>}<esc>ko

"vin split"
inoremap <c-w> <esc><c-w><c-w>
nnoremap <c-w> <c-w><c-w>
vnoremap <c-w> <c-w><c-w>
nnoremap == <c-w>=
vnoremap == <c-w>=


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

"clear highlight after search"
inoremap <C-c> <esc>:noh<cr>
nnoremap <C-c> :noh<cr>
vnoremap <C-c> :noh<cr>

"backspace fix"
"inoremap <c-h> <bs>

"latex"
nnoremap <leader>tp :!pdflatex % && zathura resume.pdf<cr>

"nerdtree"
nnoremap <c-f> :FZF<cr>

"n web"
nnoremap <c-s> :w<cr> :!xdotool search --onlyvisible --class Firefox key F5<cr><cr>

"gdb debugging"
autocmd filetype asm nnoremap <F6> :Termdebug %:r<cr><c-w>2j<c-w>L<c-w><c-w><c-w><c-w>:q!<cr>

"abbrev"
iabbrev __name if __name__ == <c-v>'__main__<c-v>':<cr><tab>main(<right>

"autocmd"
autocmd FileType python nnoremap <buffer> <leader>c I#<esc>
autocmd FileType python noremap <buffer> <F9> :w<cr>:exec '!python3' shellescape(@%, 1)<cr>
autocmd FileType python inoremap <buffer> <F9> <esc>:w<cr>:exec '!python3' shellescape(@%, 1)<cr>
autocmd FileType python nnoremap <buffer> <leader>de oset_trace()<esc>ggOfrom pudb import set_trace<esc><c-o>
autocmd FileType *.html noremap <buffer> <F9> :w<cr>:exec '!xdg-open' shellescape(@%, 1)<cr>
autocmd FileType *.html inoremap <buffer> <F9> <esc>:w<cr>:exec '!xdg-open' shellescape(@%, 1)<cr>
autocmd FileType c nnoremap <buffer> <F9> :w<cr>:exec '!gcc' shellescape(@%, 1)<cr>:!./a.out<cr>
autocmd FileType c inoremap <buffer> <F9> <esc>:w<cr>:exec '!gcc' shellescape(@%, 1)<cr>:!./a.out<cr>
autocmd FileType cpp nnoremap <buffer> <F9> :w<cr>:exec '!g++' shellescape(@%, 1)<cr>:!./a.out<cr>
autocmd FileType cpp inoremap <buffer> <F9> <esc>:w<cr>:exec '!g++' shellescape(@%, 1)<cr>:!./a.out<cr>
autocmd FileType rust nnoremap <buffer> <F9> :w<cr>:exec '!cargo run'<cr>
autocmd FileType rust inoremap <buffer> <F9> <esc>:w<cr>:exec '!cargo run'<cr>
autocmd FileType rmd nnoremap <buffer> <F9> :w<cr>:!echo<space>"require(rmarkdown);<space>render('<c-r>%')"<space>\|<space>R<space>--vanilla<cr>
autocmd FileType rmd inoremap <buffer> <F9> <esc>:w<cr>:!echo<space>"require(rmarkdown);<space>render('<c-r>%')"<space>\|<space>R<space>--vanilla<cr>
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
autocmd BufNewFile *.py 0r /home/blank/.config/nvim/templates/python.skel
autocmd BufNewFile *.rmd 0r /home/blank/.config/nvim/templates/rmd.skel
autocmd BufNewFile *.html 0r /home/blank/.config/nvim/templates/html.skel
autocmd BufNewFile *.php 0r /home/blank/.config/nvim/templates/php.skel
