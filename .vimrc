" Set no compatibility with vi
set nocompatible
set ruler

" Enable pathogen plugin manager
execute pathogen#infect()

" Enable syntax highlighting
syntax on

" Enable Nerd tree quick toggle
map <C-n> :NERDTreeToggle<CR>

" Close if only Nerdtree is left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" Enable syntastic hinters
let g:syntastic_html_checkers = ['jshint']
let g:syntastic_javascript_checkers = ['jshint']

set runtimepath^=~/.vim/bundle/ctrlp.vim

" Ignore certain files and folders
set wildignore+=*/node_modules/*,*/bower_components/*,*/tmp/*
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|bower_components|node_modules)$',
  \ }


" Enable Vundle package manager
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Import Vundle packages
Plugin 'Valloric/YouCompleteMe'

call vundle#end()
filetype plugin indent on

" Show line numbers
set number

" Set background 
set background=dark

" Enable terminal transparency
hi Normal ctermbg=none

" Autoread newer file version
set autoread

" Make GVIM have no chrome
set guioptions=

" Save all buffers
set autowriteall

" Do not make a back up
set nobackup

" Do not make a swp file
set noswapfile
