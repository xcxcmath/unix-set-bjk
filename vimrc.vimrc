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

set termguicolors " for some themes support
set t_Co=256

" Vundle
set nocompatible " REQUIRED
filetype off " REQUIRED
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim' " REQUIRED
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'kristijanhusak/vim-hybrid-material'
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdtree'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'rip-rip/clang_complete'
call vundle#end()
filetype plugin indent on

" vim airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='hybrid' " or 'luna' for solarized
set laststatus=2

" colorscheme
syntax enable
set background=dark
colorscheme hybrid_material
" use 'colorscheme solarized' if you want

" hybrid_material config
let g:enable_bold_font = 1
let g:enable_italic_font = 1
let g:hybrid_transparent_background = 1

" clang complete
" directory path containing libclang.so
" or path of clang library file
let g:clang_library_path='<path>'
