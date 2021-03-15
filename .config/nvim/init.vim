" Neovim Config updated "


source $HOME/.config/nvim/vim-plug/plugins.vim

set relativenumber
set number


au BufNewFile,BufRead *.py,*.java,*.cpp,*.c,*.cs,*.rkt,*.h,*.html,*.txt
     \ set tabstop=4 |
     \ set softtabstop=4 |
     \ set shiftwidth=4 |
     \ set textwidth=120 |
     \ set expandtab |
     \ set autoindent |
     \ set fileformat=unix |

colorscheme slate
colorscheme gruvbox

set encoding=utf-8
set laststatus=2
set autoindent " enable auto indentation of lines
set smartindent " allow vim to best-effort guess the indentation
set hlsearch "highlights matching searches
set showmatch "highlights matching brackets
set wildmenu "graphical auto complete menu




