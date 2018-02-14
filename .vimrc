""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""" VUNDLE PLUGIN SETTINGS """"""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Declare all plugins here
Plugin 'VundleVim/Vundle.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdtree'
Plugin 'bling/vim-airline'


" All plugins must be added before the following line
call vundle#end()

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""" SPECIFIC PLUGIN SETTINGS """"""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" solarized
syntax enable
set background=dark
colorscheme solarized

" nerdtree
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:NERDTreeDirArrowExpandable = '>'
let g:NERDTreeDirArrowCollapsible = '>'
let NERDTreeShowHidden=1

" Airline settings
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""" VIM SETTINGS """"""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set showcmd                     " show partial commands in status line and Selected characters/lines in visual mode
set showmode                    " show current mode (insert/visual)
set showmatch                   " shows matching bracket/parenthesis
set backspace=indent,eol,start  " set backspace for dummies
set title
set autowrite                   " automatically write a file when leaving a modified buffer 
set autoread                    " automatically read a file changed outside of vim
set number
set hidden
set history=100
set nowrap                      " do not wrap long lines
set tabstop=4                   " an indention every 4 columns
set shiftwidth=4                " use indents of 4 spaces
set expandtab
set smarttab                    " sets smarttab
set softtabstop=4               " let backspace delete indent
set autoindent                  " indents at the same line as above
set incsearch                   " find as you type search
set hlsearch                    " highlights search words
set ignorecase                  " ignores case during search
set vb
set hidden                      " allow buffer switching without saving
set ruler                       " show the ruler
set scrolljump=5                " jumps 5 lines when cursor goes off the screen
set scrolloff=3                 " always stays 3 lines off the screen 
set splitright                  " vertical split (vs) adds new window to the right
set splitbelow                  " horizonal split (hz) adds new window below
set mousehide                   " automatically hides the mouse cursor when starting to type
set t_Co=256                    " Use 256 Colors
"set linespace=0                 " number of pixels between lines
filetype plugin indent on "automatically detect filetype

" Set high undo levels
set undolevels=1000

" No backups and swaps
set nobackup
set noswapfile

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""" KEY BINDINGS """"""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Maps escape to jj because no one ever types jj twice in a row
inoremap jj <Esc>

"Shortcuts using leader
"Fast Saving
nnoremap <C-w> :w!<cr>
nnoremap <C-q> :q<cr>
nnoremap <C-x> :x<cr>

"Remap move windows
nnoremap <C-a> <C-w>w

" Turn off the fucking recording key that is absolutely useless
nnoremap q <nop>

"Shortcuts using CTRL
"Tab shortcuts
nnoremap <C-j> :bn<cr>
nnoremap <C-k> :bp<cr>
"nnoremap <C-i> :bn<cr>:bd#<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""" KEY BINDINGS """"""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"if has("autocmd")
"  autocmd BufReadPost *
"    \ if line("'\"") > 1 && line("'\"") <= line("$") |
"    \   exe "normal! g`\"" |
"    \ endif
"endif

"Source .vimrc once it's been edited
autocmd! bufwritepost .vimrc source ~/.vimrc

"Reload files after vimrc has been edited
augroup myvimrc
   au!
   au BufWritePost .vimrc,_vimrc,vimrc,.gvimrc,_gvimrc,gvimrc so $MYVIMRC | if has('gui_running') | so $MYGVIMRC | endif
augroup END

"Cursor wrapping, which wraps arrow keys
"set whichwrap+=<,>,h,l,[,]

"Folding stuff
au BufNewFile,BufRead *.py,*.json set ft=python sw=4
au FileType cpp set foldmethod=syntax
au FileType c set foldmethod=syntax
map <space> za
set foldnestmax=1
