set number
set laststatus=2
set wrap
set autoindent
set tabstop=4
set wildmode=longest:full,full
set termguicolors
set shiftwidth=4
set mouse=a
set hidden
set relativenumber
set statusline+=%F
set nocompatible

syntax enable
filetype plugin indent on

map <C-p> :Files<cr>

" Telescope 
nnoremap <C-p> <cmd>Telescope find_files<cr>
nnoremap <C-f> <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

map <C-b> :NERDTreeToggle<cr>
noremap <Leader>c "*y
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==
inoremap <C-j> <Esc>:m .+1<CR>==gi
inoremap <C-k> <Esc>:m .-2<CR>==gi
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv
nmap <leader>a :CtrlSF -R ""<Left>
autocmd BufNewFile,BufRead *.isml set ft=html
autocmd BufNewFile,BufRead *.ds set ft=javascript
"
" Set plugins
call plug#begin()
	Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
	Plug 'rust-lang/rust.vim'
	Plug 'dense-analysis/ale'
	Plug 'itchyny/lightline.vim'
	Plug 'dracula/vim', { 'as': 'dracula' }
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'nvim-lua/plenary.nvim'
	Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
	Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
	Plug 'bluz71/vim-nightfly-guicolors'
	Plug 'dyng/ctrlsf.vim'
	Plug 'nvim-lua/plenary.nvim'
	Plug 'nvim-telescope/telescope.nvim'
	Plug 'joshdick/onedark.vim'
	Plug 'dense-analysis/ale'
	Plug 'ayu-theme/ayu-vim'
	Plug 'morhetz/gruvbox'
	Plug 'joshdick/onedark.vim'
	Plug 'sheerun/vim-polyglot'
	Plug 'olimorris/onedarkpro.nvim'
	Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
	Plug 'nvim-lualine/lualine.nvim'
	Plug 'kyazdani42/nvim-web-devicons'
	Plug 'airblade/vim-gitgutter'
	Plug 'kyazdani42/nvim-web-devicons'
	Plug 'romgrk/barbar.nvim'
	Plug 'lewis6991/gitsigns.nvim'
call plug#end()


lua << EOF
require('lualine').setup()
require('gitsigns').setup {
	current_line_blame = true,
}
EOF

" Set theme
"set termguicolors     " enable true colors support
"let ayucolor="light"  " for light version of theme
"let ayucolor="mirage" " for mirage version of theme
"let ayucolor="dark"   " for dark version of theme
"colorscheme gruvbox
syntax on
colorscheme onedarkpro
