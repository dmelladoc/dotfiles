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
" Special Functions
"
function! WordCount()
    let currentmode = mode()
    if !exists("g:lastmode_wc")
        let g:lastmode_wc = currentmode
    endif
    " if we modify file, open a new buffer, be in visual ever, or switch modes
    " since last run, we recompute.
    if &modified || !exists("b:wordcount") || currentmode =~? '\c.*v' || currentmode != g:lastmode_wc
        let g:lastmode_wc = currentmode
        let l:old_position = getpos('.')
        let l:old_status = v:statusmsg
        execute "silent normal g\<c-g>"
        if v:statusmsg == "--No lines in buffer--"
            let b:wordcount = 0
        else
            let s:split_wc = split(v:statusmsg)
            if index(s:split_wc, "Selected") < 0
                let b:wordcount = str2nr(s:split_wc[11])
            else
                let b:wordcount = str2nr(s:split_wc[5])
            endif
            let v:statusmsg = l:old_status
        endif
        call setpos('.', l:old_position)
        return b:wordcount
    else
        return b:wordcount
    endif
endfunction


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

" VimAirline
"let g:airline_theme='wombat'
"let g:airline_theme = 'tokyonight'
"let g:airline_powerline_fonts = 1
"let g:airline#extensions#tabline#enabled = 1

" Lightline
set noshowmode "No show last line
set laststatus=2

let g:lightline = {
    \ 'colorscheme': 'tokyonight',
    \ 'active': {
    \   'left': [ [ 'mode', 'paste' ],
    \             [ 'readonly', 'filename', 'modified', 'wordcount' ] ],
    \   'right': [ [ 'lineinfo' ],
    \              [ 'percent' ],
    \              [ 'fileformat', 'fileencoding', 'filetype' ] ],
    \ },
    \ 'component_function': {
    \   'wordcount': 'WordCount'
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
