" Get pathogen ready first
runtime bundle/vim-pathogen/autoload/pathogen.vim

" Init pathogen.vim
execute pathogen#infect()

set nocompatible

syntax enable
syntax on
set encoding=utf-8
set noswapfile
set nobackup
set ignorecase
set incsearch
set hlsearch
set number
colorscheme torte
set guifont=Courier:h20

" Tab and indent settings
set autoindent
set cindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab

nnoremap j gj
nnoremap k gk

" Change dir to the first opening file
" and don't auto change dir ever.
" cd %:p:h
" set noautochdir

" CtrlP config

" Set this to 1 to set searching by filename (as opposed to full path) as the
" default: >
let g:ctrlp_by_filename = 1

" Set this to 1 to set regexp search as the default: >
let g:ctrlp_regexp = 1

" 1 - the parent directory of the current file.
" 2 - the nearest ancestor that contains one of these directories or files:
"     .git/ .hg/ .svn/ .bzr/ _darcs/
" 0 - don't manage working directory.
let g:ctrlp_working_path_mode = 0

" Set this to 1 to enable the lazy-update feature: only update the match window
" after typing been stopped for a certain amount of time: >
"
" If is 1, update after 250ms. If bigger than 1, the number will be used as the
" delay time in milliseconds.
let g:ctrlp_lazy_update = 1

" The maximum number of files to scan, set to 0 for no limit: >
let g:ctrlp_max_files = 0

" Set the maximum height of the match window: >
let g:ctrlp_max_height = 70

" In addition to |'wildignore'|, use this for files and directories you want only
" CtrlP to not show. Use regexp to specify the patterns: >
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\.git$\|\.hg$\|\.svn$',
    \ 'file': '\.exe$\|\.so$\|\.dll$\|\.elf$\|\.o$\
               \|\.obj$\|\.class$\
               \|\.png$\|\.jpg$\|\.jpeg$\|\.bmp$\
               \|\.vsd$\|\.vsdx$\|\.doc$\|\.docx$\
               \|\.xls$\|\.xlsx$',
    \ 'link': '',
    \ }

" Set this to 0 to enable cross-session caching by not deleting the cache files
" upon exiting Vim: >
let g:ctrlp_clear_cache_on_exit = 0

" iPad vim config

" Find definition
nnoremap T :ts <C-R><C-W> <CR>

" vimgrep
noremap <silent> <Space> :call Search_Word()<CR>:copen<CR>
function Search_Word()
    let w = expand("<cword>")
    execute ":noautocmd vimgrep " w "**"
endfunction

" Jump back and forward
nnoremap , <C-o>
nnoremap . <C-i>

" cnext cprev
nnoremap ? :cnext <CR>
nnoremap ! :cprev <CR>

" CtrlP
let g:ctrlp_map = ';'

