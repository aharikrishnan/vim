"Init variables
let mapleader = ','
let g:ctrlp_match_window = 'top,order:ttb,min:1,max:50,results:50'
let g:ctrlp_clear_cache_on_exit = 0
let g:airline_theme='hybrid'

"-------------------- PLUGIN INITIALIZE BEGIN--------------- 
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

"version control
Plugin 'tpope/vim-fugitive'

"general editor enhancement
"Plugin 'xolox/vim-session'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-sensible'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'mbbill/undotree'
Plugin 'majutsushi/tagbar'
Plugin 'kien/ctrlp.vim'
Plugin 'honza/vim-snippets'
Plugin 'godlygeek/tabular'
Plugin 'ervandew/supertab'
Plugin 'chrisbra/NrrwRgn'
Plugin 'airblade/vim-gitgutter'
Plugin 'Shougo/vimproc.vim'
Plugin 'Shougo/neocomplcache.vim'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'szw/vim-ctrlspace'

"aesthetics
"Plugin 'reedes/vim-thematic'
Plugin 'flazz/vim-colorschemes'
Plugin 'bling/vim-airline'

"programming
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-markdown'
Plugin 'scrooloose/nerdcommenter'
Plugin 'mattn/emmet-vim'
Plugin 'ecomba/vim-ruby-refactoring'
Plugin 'fatih/vim-go'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
"------------------------- PLUGIN END------------------------- 

"normal vim customizations
set bg=light
"set bg=dark
colorscheme pencil
set autowriteall  "killer Feature
set nowrap        " don't wrap lines
set tabstop=2     " a tab is four spaces
set autoindent    " always set autoindenting on
set copyindent    " copy the previous indentation on autoindenting
set number        " always show line numbers
set shiftwidth=2  " number of spaces to use for autoindenting
set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'
set showmatch     " set show matching parenthesis
set ignorecase    " ignore case when searching
set smartcase     " ignore case if search pattern is all lowercase, case-sensitive otherwise
set smarttab      " insert tabs on the start of a line according to shiftwidth, not tabstop
set hlsearch      " highlight search terms
set incsearch     " show search matches as you type keystrokes
set linespace=1
set showcmd

"plugin specific customizations
set hidden

"key mappings
nnoremap <leader>ut :UndotreeToggle<CR>
nnoremap <S-h>      :tabprev<CR>
nnoremap <S-l>      :tabnext<CR>
nnoremap <C-e>      :NERDTreeToggle<CR>
nnoremap <C-\>      :NERDTreeToggle<CR>
nnoremap <leader>e  :NERDTreeFind<CR>
nnoremap <leader>tt :TagbarToggle<CR>
nnoremap <leader>w  :set wrap<CR>
nnoremap <leader>nw :set nowrap<CR>
" Use CTRL-S for saving, also in Insert mode
noremap <C-S> :update<CR>
vnoremap <C-S> <esc>:update<CR>gv
inoremap <C-S> <C-O>:update<CR>
