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
    " Autocompletion"
    Plug 'ycm-core/YouCompleteMe'
    "Indentation for html in php"
    Plug 'captbaritone/better-indent-support-for-php-with-html'
    "Tag surronding"
    Plug 'tpope/vim-surround'
call plug#end()

