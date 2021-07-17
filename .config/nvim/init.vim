source $HOME/.config/nvim/vim-plug/plugins.vim

set relativenumber
set number

" KEYBINDS =================================================

" Sets the leader key
let mapleader =" " 

" Compile document, be it markdown or py using compiler script
" ~/.local/bin/compiler
map <leader>c :w! \| !compiler "<c-r>%"<CR><esc>

nnoremap <F8> :noh <esc>
nnoremap <F7> :IndentGuidesToggle <esc>
nnoremap <F10> :tabnew <esc>
nnoremap <C-n> :tabn <esc>
nnoremap <C-p> :tabp <esc>
" nnoremap <leader>n :tabn <esc>
" nnoremap <leader>p :tabp <esc>

" NERD TREE KEYBINDS #########################
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <leader>n :NERDTreeFocus<CR>
" nnoremap <C-n> :NERDTree<CR>
" nnoremap <C-f> :NERDTreeFind<CR>

" ==========================================================


" Pane Movement
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l


au BufNewFile,BufRead *.py,*.java,*.cpp,*.c,*.cs,*.rkt,*.h,*.html,*.txt,*.js
     \ set tabstop=4 |
     \ set softtabstop=4 |
     \ set shiftwidth=4 |
     \ set textwidth=120 |
     \ set expandtab |
     \ set autoindent |
     \ set fileformat=unix |

colorscheme slate
colorscheme molokai

set encoding=utf-8
set laststatus=2
set autoindent " enable auto indentation of lines
set smartindent " allow vim to best-effort guess the indentation
set hlsearch "highlights matching searches
set showmatch "highlights matching brackets
set wildmenu "graphical auto complete menu


" autocmd FileType python map <buffer> <F9> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
" autocmd FileType python imap <buffer> <F9> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>

autocmd BufRead,BufNewFile /tmp/calcurse*,~/.calcurse/notes/* set filetype=markdown

" Exit Vim if NERDTree is the only window left.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif


" Start on vim Startup
let g:indent_guides_enable_on_vim_startup = 0

" The size of the indent line
let g:indent_guides_guide_size = 4

" When it starts
let g:indent_guides_start_level = 1

" Set Vim Airline Theme
let g:airline_theme='fruit_punch'

" Changes Nerd Tree arrows (Nerd Font)
let g:NERDTreeDirArrowExpandable = ''
let g:NERDTreeDirArrowCollapsible = ''

" let g:WebDevIconsDisableDefaultFolderSymbolColorFromNERDTreeDir = 1
" let g:WebDevIconsDisableDefaultFileSymbolColorFromNERDTreeFile = 1

" Color full name of the file
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1

