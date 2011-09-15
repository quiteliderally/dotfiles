" defaults
set tabstop=2
set shiftwidth=2
set pastetoggle=<F11>
set background=dark
set mouse=
color xoria256
syntax on

set autoindent
set smartindent
set showmatch
set expandtab
set nofoldenable 
set wildmode=longest:full
set wildmenu

set wrap
set linebreak

:autocmd FileType php noremap <C-L> :!/usr/local/bin/php -l %<CR>

" read/write a .viminfo file, don't store more than 1000 lines of registers
set viminfo='20,\"1000

" don't show help when F1 is pressed
map <F1> <ESC>
"ignoremap <F1> <ESC>

"Open file at last edited location
au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") |
                         \ exe "normal g'\"" | endif

"---------+
" Comments \
"-----------+

map ,# :s/^/#/<CR>
map ,/ :s/^/\/\//<CR>
map ,> :s/^/> /<CR>
map ,! :s/^/!/<CR>
map ,; :s/^/;/<CR>
map ,- :s/^/--/<CR>
map ,c :s/^\/\/\\|^--\\|^> \\|^[#"%!;]//<CR>

