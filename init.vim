call plug#begin('~/.vim/plugged')
Plug 'ap/vim-css-color'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-surround'
Plug 'Raimondi/delimitMate'
Plug 'vim-airline/vim-airline'
Plug 'vim-syntastic/syntastic'
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline-themes'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'preservim/nerdcommenter'
Plug 'ervandew/supertab'

call plug#end()

set clipboard=unnamed
set relativenumber
set number
:set tabstop=4

au BufNewFile,BufRead *.py,*.java,*.cpp,*.c,*.cs,*.rkt,*.h,*.html
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=120 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |

source $VIMRUNTIME/mswin.vim
behave mswin


" up to here del"

set encoding=utf-8

syntax on

set laststatus=2
" set showtabline=2

set backspace=indent,eol,start " let backspace delete over lines
set autoindent " enable auto indentation of lines
set smartindent " allow vim to best-effort guess the indentation

set hlsearch "highlights matching searches
set showmatch "highlights matching brackets
set wildmenu "graphical auto complete menu

set noswapfile
