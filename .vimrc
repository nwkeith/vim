set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" YouCompleteMe Auto-complete
Plugin 'ycm-core/YouCompleteMe'
" Eldar colorScheme
Plugin 'agude/vim-eldar'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

set encoding=utf-8

" Adding line numbers
set number
set relativenumber

" Auto compile python scripts when saving
	autocmd BufWritePost *.py !python3 %

" Auto close preview window in YCH
	autocmd CompleteDone * pclose
"------------------------
" Syntax: highlighting
"------------------------
if has('syntax')
    syntax enable             " Turn on syntax highlighting
    silent! colorscheme eldar " Custom color scheme
endif
