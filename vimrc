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

autocmd FileType php noremap <C-L> :!/usr/local/bin/php -l %<CR>
autocmd FileType python setlocal expandtab shiftwidth=4 tabstop=8 softtabstop=4 smartindent 

" read/write a .viminfo file, don't store more than 1000 lines of registers
set viminfo='20,\"1000

"Open file at last edited location
au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") |
                         \ exe "normal g'\"" | endif

nnoremap <Leader>d :let NERDTreeQuitOnOpen = 1<bar>NERDTreeToggle<CR>
nnoremap <Leader>D :let NERDTreeQuitOnOpen = 0<bar>NERDTreeToggle<CR>
