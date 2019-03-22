let mapleader = ','
" autocmd BufEnter * lcd %:p:h " Set autochdir
set nowrap        " don't wrap lines
set autoindent    " always set autoindenting on
set copyindent    " copy the previous indentation on autoindenting
set showmatch     " set show matching parenthesis
set ignorecase    " ignore case when searching
set smartcase     " ignore case if search pattern is all lowercase, case-sensitive otherwise
set smarttab      " insert tabs on the start of a line according to shiftwidth, not tabstop
set hlsearch      " highlight search terms
set incsearch     " show search matches as you type keystrokes

set autowriteall
set swapfile
set dir=~/.vimswap

set expandtab
set tabstop=2     " a tab is four spaces
set shiftwidth=2  " number of spaces to use for autoindenting
set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'

syntax on

set nocompatible              " be iMproved, required
filetype off                  " required

let g:tagbar_compact = 1

""------------------------- PLUGIN END-------------------------
call plug#begin('~/.vim/plugged')

Plug 'chrisbra/NrrwRgn'
Plug 'dracula/vim'
Plug 'gmarik/Vundle.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'mattn/emmet-vim'
Plug 'mbbill/undotree'
Plug 'scrooloose/nerdtree'
" Plug 'scrooloose/syntastic'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-surround'
Plug 'majutsushi/tagbar'
Plug 'scrooloose/nerdcommenter'


call plug#end()
""------------------------- PLUGIN END-------------------------
filetype plugin indent on

nnoremap <C-e>      :NERDTreeToggle<CR>
nnoremap <C-\>      :NERDTreeFind<CR>
nnoremap <S-h>      :tabprev<CR>
nnoremap <S-l>      :tabnext<CR>
nnoremap <C-p> :FZF<CR>
nnoremap <Leader>tt :Tagbar<CR>

colorscheme dracula
set bg=dark
"colorscheme default
"set bg=light

