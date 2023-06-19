call plug#begin('~/.config/nvim/autoload/plugged')
    " LSP Support
    Plug 'neovim/nvim-lspconfig'                           " Required
    Plug 'williamboman/mason.nvim', {'do': ':MasonUpdate'} " Optional
    Plug 'williamboman/mason-lspconfig.nvim'               " Optional

    " Autocompletion
    Plug 'hrsh7th/nvim-cmp'     " Required
    Plug 'hrsh7th/cmp-nvim-lsp' " Required
    Plug 'L3MON4D3/LuaSnip'     " Required

    Plug 'VonHeikemen/lsp-zero.nvim', {'branch': 'v2.x'}

	" Nice bar
	Plug 'vim-airline/vim-airline'
	" Markdown preview
	Plug 'instant-markdown/vim-instant-markdown' 
	" Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " File Explorer
    Plug 'scrooloose/NERDTree'
    " Emmet"
    Plug 'mattn/emmet-vim'
    "Indent line"
    Plug 'Yggdroot/indentLine'
    " Autocompletion"
    Plug 'ackyshake/VimCompletesMe'
    "Indentation for html in php"
    Plug 'captbaritone/better-indent-support-for-php-with-html'
    "Tag surronding"
    Plug 'tpope/vim-surround'
    "Fuzzy finder"
    Plug 'junegunn/fzf'
    "Python autocompletion, definition jumps and more"
"    Plug 'davidhalter/jedi-vim'
    Plug 'stevearc/oil.nvim'

    "Markdown"
	Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }
call plug#end()

