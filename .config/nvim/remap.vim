"leader"
let mapleader = ","
let localleader = "<space>"

" autocompletion "
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap { {}<left>
inoremap [ []<left>

"movement"
inoremap <c-j> <down>
inoremap <c-k> <up>
inoremap <c-h> <left>
inoremap <c-l> <right>

"normal mode"
nnoremap + viwU
nnoremap - viwu
"nnoremap \" viw<esc>a\"<esc>hbi"<esc>lel
nnoremap ' viw<esc>a'<esc>hbi'<esc>lel
nnoremap [ viw<esc>a]<esc>hbi[<esc>lel
nnoremap { viw<esc>a}<esc>hbi{<esc>lel
nnoremap ( viw<esc>a)<esc>hbi(<esc>lel
nnoremap # 0i#<esc>
nnoremap <Up> kdd
nnoremap <Down> jdd

"insert mode"
inoremap jk <esc>
inoremap <c-u> <esc>2lbviwUi
inoremap <c-w> <esc>2lbviwdi
inoremap <c-p> {<cr>}<esc>ko

"visual mode"
vnoremap <leader>c I#<esc>
vnoremap # I#<esc>
vnoremap ( di()<esc>hp

" tab "
noremap <tab> >>
noremap <s-tab> <<

"initrc"
nnoremap <leader>sev :source ~/.config/nvim/remap.vim<cr>
nnoremap <leader>ev :vsplit ~/.config/nvim/remap.vim<cr>
nnoremap <leader>co :vsplit ~/.config/nvim/config.vim<cr>
nnoremap <leader>pl :vsplit ~/.config/nvim/plugins.vim<cr>

nnoremap <c-s> :w<cr> :!xdotool search --onlyvisible --class Firefox key F5<cr><cr>

"abbrev"
iabbrev __name if __name__ == <c-v>'__main__<c-v>':<cr><tab>pass

"autocmd"
autocmd FileType python nnoremap <buffer> <leader>c I#<esc>
autocmd FileType python map <buffer> <F9> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <F9> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType c map <buffer> <F9> :w<CR>:exec '!gcc' shellescape(@%, 1)<CR>:!./a.out<cr>
autocmd FileType c imap <buffer> <F9> <esc>:w<CR>:exec '!gcc' shellescape(@%, 1)<CR>:!./a.out<cr>
autocmd BufNewFile *.html 0r /home/blank/.config/nvim/templates/html.skel
nnoremap <leader>c I#<esc>
