call plug#begin('~/.config/nvim/autoload/plugged')
	" Nice bar
	Plug 'vim-airline/vim-airline'	
	" Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " File Explorer
    Plug 'scrooloose/NERDTree'
    " Emmet"
    Plug 'mattn/emmet-vim'
    "Indent line"
    Plug 'Yggdroot/indentLine'
    "Auto suggestions"
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

