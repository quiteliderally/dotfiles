" defaults
set tabstop=2
set shiftwidth=2
set pastetoggle=<F11>
set background=dark
set mouse=
syntax on

set smartindent
set expandtab
set nofoldenable 
set wildmode=longest:full
set tagrelative

set wrap
set linebreak

set relativenumber
autocmd InsertEnter * :set number
autocmd InsertLeave * :set relativenumber

set ttyfast
set lazyredraw

set t_ut=
autocmd FileType python setlocal expandtab shiftwidth=4 tabstop=8 softtabstop=4 smartindent 

"Open file at last edited location
au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") |
                         \ exe "normal g'\"" | endif

colorscheme xoria256
nmap <Leader>d :let NERDTreeQuitOnOpen = 1<bar>NERDTreeToggle<CR>
nmap <Leader>D :let NERDTreeQuitOnOpen = 0<bar>NERDTreeToggle<CR>
nmap <Leader>l :set list!<CR>

autocmd FileType mail set spell spelllang=en fo+=aw
set undodir^=~/.vim/undo

filetype plugin indent on
syntax on

call pathogen#infect()
call pathogen#helptags()
