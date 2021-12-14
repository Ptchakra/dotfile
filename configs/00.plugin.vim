call plug#begin('~/.config/nvim/bundle')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'morhetz/gruvbox'
Plug 'arcticicestudio/nord-vim'
Plug 'joshdick/onedark.vim'
Plug 'lifepillar/vim-solarized8'
Plug 'itchyny/lightline.vim'
Plug 'voldikss/vim-floaterm'
Plug 'christoomey/vim-tmux-navigator'
Plug 'machakann/vim-highlightedyank'
" Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-commentary'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'shumphrey/fugitive-gitlab.vim'
" Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
Plug 'chun-yang/auto-pairs'
Plug 'unblevable/quick-scope'
Plug 'tpope/vim-surround'

Plug 'kyazdani42/nvim-web-devicons' " for file icons
Plug 'scrooloose/NERDTree'
" Plug 'kyazdani42/nvim-tree.lua'

" Plug 'terryma/vim-multiple-cursors'
" Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
" Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
" Plug 'w0rp/ale'
" Vscode easymotion, disable in pure nvim
" Plug 'asvetliakov/vim-easymotion', { 'on': [] }
Plug 'asvetliakov/vim-easymotion'
call plug#end()

