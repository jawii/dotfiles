" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdtree'

call vundle#end()            " required
filetype plugin indent on    " required


" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ

syntax on               " Set syntax
set number              " Line numbers
set encoding=utf-8
set clipboard=unnamedplus

filetype on             " Detect filetype for syntax-highlighting etc.
filetype plugin on      " Load ftplugin.vim
filetype indent on      " Load indent.vim

" Leader keys
" inoremap jk <ESC>
let mapleader = " "     " Change leaded key to space
