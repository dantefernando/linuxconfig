
set relativenumber
set number
:set tabstop=4
set clipboard=unnamedplus
set paste

au BufNewFile,BufRead *.py,*.java,*.cpp,*.c,*.cs,*.rkt,*.h,*.html
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=120 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |

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


autocmd BufWritePost ~/.suckless/dwmblocks/config.h !cd ~/suckless/dwmblocks/; sudo make install && { killall -q dwmblocks;setsid dwmblocks & }
