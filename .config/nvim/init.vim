set number
set laststatus=2
set wrap

syntax enable
filetype plugin indent on

" Set plugins
call plug#begin()
    Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
    Plug 'rust-lang/rust.vim'
    Plug 'dense-analysis/ale'
    Plug 'itchyny/lightline.vim'
    Plug 'dracula/vim', { 'as': 'dracula' }
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
call plug#end()

" Set theme
colorscheme dracula
