set number
set laststatus=2
set wrap

syntax enable
filetype plugin indent on

call plug#begin()
    Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
    Plug 'rust-lang/rust.vim'
    Plug 'dense-analysis/ale'
    Plug 'itchyny/lightline.vim'
call plug#end()
