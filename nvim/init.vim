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

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree'
Plug 'ghifarit53/tokyonight-vim'

" Deoplete
Plug 'shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'deoplete-plugins/deoplete-jedi'

call plug#end()

"
" Plugin configs
"

" Current theme
set termguicolors

let g:tokyonight_style = 'night' " available: night, storm
let g:tokyonight_transparent_background = 1
let g:tokyonight_enable_italic = 1

colorscheme tokyonight


" Deoplete
let g:deoplete#enable_at_startup = 1

" VimAirline
" let g:airline_theme='wombat'
let g:airline_theme = 'tokyonight'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
