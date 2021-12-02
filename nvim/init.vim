"""
" Config de Vim
"""

"
" General
"
set encoding=utf8
set smartcase
set hlsearch

"
" text
"
set expandtab
set smarttab
set shiftwidth=4
set tabstop=4
set autoindent
set copyindent


"
" display
"
set number
set relativenumber
set numberwidth=2

"
" VimPlug
" 
call plug#begin('~/.vim/plugged')

"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
Plug 'itchyny/lightline.vim'

Plug 'scrooloose/nerdtree'

"Plug 'ghifarit53/tokyonight-vim'
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'lervag/vimtex'

"VimFugitive (git)
Plug 'tpope/vim-fugitive'

" Deoplete
Plug 'shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'deoplete-plugins/deoplete-jedi'

"wordcount
call plug#end()

"
" Plugin configs
"

" Current theme
set termguicolors

let g:tokyonight_style = 'night' " available: night, storm
let g:tokyonight_transparent = 1
let g:tokyonight_italic_comments = 1

colorscheme tokyonight


" Deoplete
let g:deoplete#enable_at_startup = 1
let g:python3_host_prog = '/home/caribu/miniconda3/bin/python3'


" Lightline
set noshowmode "No show last line
set laststatus=2

let g:lightline = {
    \ 'colorscheme': 'tokyonight',
    \ 'active': {
    \   'left': [ [ 'mode', 'paste' ],
    \             [ 'filename', 'modified', 'readonly' ],
    \             [ 'gitbranch' ],
    \             [ 'spell' ] ],
    \   'right': [ [ 'lineinfo' ],
    \              [ 'percent' ],
    \              [ 'fileformat', 'fileencoding', 'filetype' ] ],
    \ },
    \ 'component_function': {
    \   'gitbranch': 'FugitiveHead'
    \ },
    \ 'separator': { 'left': '', 'right': '' },
    \ 'subseparator': { 'left': '', 'right': '' }
    \ }

" Vimtex
"  server support
let g:vimtex_compiler_progname = 'nvr'


" keybindings
" NERDTree
:let mapleader = "`"
nnoremap <leader>n :NERDTreeToggle<CR>

"Git
nnoremap <leader>ga :Git add .<CR>
nnoremap <leader>gc :Gcommit<CR>
nnoremap <leader>gs :Gstatus<CR>
nnoremap <leader>gp :Gpush<CR>

"tab completion
inoremap <silent><expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
inoremap <silent><expr><s-tab> pumvisible() ? "\<c-p>" : "\<s-tab>"

"spelling
nnoremap <leader>s :setlocal spell! spelllang=es<CR>

"Vimtex
nnoremap <leader>tw :VimtexCompile<CR>
nnoremap <leader>tc :VimtexClean<CR>
nnoremap <leader>tt :VimtexView<CR>
