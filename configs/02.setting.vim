let mapleader = "\<Space>"

" Enable mouse
set mouse=a

" Split
nnoremap <leader>\ :vsplit<CR>
nnoremap <leader>- :split<CR>
set splitbelow
set splitright


"Useful mappings for managing tabs:
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove

" Opens a new tab with the current buffer's path
" Super useful when editing files in the same directory
map <leader>te :tabedit <C-r>=expand("%:p:h")<cr>/

" Switch tab
nnoremap H gT
nnoremap L gt

" Switch between windows
noremap <silent> <c-k> :wincmd k<CR>
noremap <silent> <c-j> :wincmd j<CR>
noremap <silent> <c-h> :wincmd h<CR>
noremap <silent> <c-l> :wincmd l<CR>

" Save buffer
noremap <C-s> <ESC><ESC>:w!<CR>
inoremap <C-s> <ESC><ESC>:w!<CR>
noremap <F13> <ESC><ESC>:w!<CR>
inoremap <F13> <ESC><ESC>:w!<CR>
noremap <leader>s <ESC><ESC>:w!<CR>

" Exit
nnoremap qq <ESC>:q<cr>
nnoremap qw <ESC>:wq<cr>
nnoremap q1 <ESC>:q!<cr>

" ESC 
inoremap jj <ESC>
inoremap jk <ESC>
inoremap <C-c> <ESC>

" Auto update file if this change by other process
set autoread
set autowrite
set nobackup
set nowritebackup
set noswapfile

" Color
set background=dark
set termguicolors
colorscheme nord
highlight Normal ctermbg=NONE
set colorcolumn=80

set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<
"set list

" Relative number
set number
set relativenumber
set numberwidth=5

" Use clipboard
set clipboard+=unnamedplus

" Python
let g:python_highlight_all = 1
let g:loaded_python_provider = 0
let g:python3_host_prog = '~/.config/nvim/py3nvim/bin/python'
" let g:python_host_prog = '/usr/bin/python'
set pyx=3

" Json get correct comment highlighting
autocmd FileType json syntax match Comment +\/\/.\+$+

set expandtab                   " Use spaces instead of tabs.
set smarttab                    " Be smart using tabs ;)
set shiftwidth=4                " One tab == four spaces.
set tabstop=4                   " One tab == four spaces.
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab "YAML 1tab=2spaces
autocmd FileType yml setlocal ts=2 sts=2 sw=2 expandtab "YAML 1tab=2spaces
autocmd FileType javascript setlocal ts=2 sts=2 sw=2 expandtab "JS 1tab=2spaces
autocmd FileType html setlocal ts=2 sts=2 sw=2 expandtab "JS 1tab=2spaces
autocmd FileType py set expandtab autoindent tabstop=4 softtabstop=4 shiftwidth=4 foldmethod=indent





