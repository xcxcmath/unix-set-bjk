set number " line number
set ruler " show cursor location
set title " show title

set ai " auto indent
set si " smart indent
set cindent " c-style indent

set tabstop=4
set softtabstop=4
set shiftwidth=4

set ignorecase " when searching
set hlsearch " highlighting

set expandtab " tab to space
autocmd Filetype make setlocal noexpandtab " for makefiles

set bs=indent,eol,start " connect with prev line

set history=1000
set nobackup

set showmatch
set wrap " auto LF
set wmnu

set t_Co=256

" Vundle
set nocompatible " REQUIRED
filetype off " REQUIRED
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim' " REQUIRED
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdtree'
Plugin 'terryma/vim-multiple-cursors'
call vundle#end()
filetype plugin indent on

" vim airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='luna'
set laststatus=2

" colorscheme
syntax enable
set background=dark
colorscheme solarized
