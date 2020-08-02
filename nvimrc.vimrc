if !exists('g:vscode')
set number
set relativenumber
set ai
set si

set shiftwidth=2
set tabstop=2
set softtabstop=2

set ignorecase
set hlsearch

set bs=indent,eol,start
set history=1000

set ruler
set expandtab
autocmd Filetype make setlocal noexpandtab

set title
set showmatch
set wrap
set wmnu

if (empty($TMUX))
  if (has("nvim"))
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  else
    set t_Co=256
  endif
endif

"for coc
set hidden
set nobackup
set nowritebackup
set cmdheight=2
set shortmess+=c
set signcolumn=yes

call plug#begin('~/.config/nvim/plugged')
Plug 'scrooloose/nerdtree'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'joshdick/onedark.vim'
Plug 'sheerun/vim-polyglot'
Plug 'mhinz/vim-startify'

" Plug 'rbgrouleff/bclose.vim'
" Plug 'francoiscabrol/ranger.vim'
Plug 'leafgarland/typescript-vim'

" fzf
call plug#end()

let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='tomorrow'
set laststatus=2

syntax enable
set background=dark
colorscheme onedark
let g:enable_bold_font = 1
let g:enable_italic_font = 1
let g:hybrid_transparent_background = 1

let g:onedark_terminal_italics = 1
else

endif