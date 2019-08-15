"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Use Vim instead of Vi options
set nocompatible

" Sets how many lines of history VIM remembers
set history=1000

" Enable filetype plugins
filetype plugin on
filetype indent on

" Auto read when a file is changed externally
set autoread

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugin configuration
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:syntastic_python_python_exec = '/usr/bin/python'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM UI
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Turn on the Wild menu (command-line completion)
set wildmenu

" Ignore compiled files
set wildignore=*.o,*~,*.pyc

"Always show current position
set ruler

" Allow backspace in insert mode
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Ignore case when searching
set ignorecase
set smartcase

" Highlight search results
set hlsearch

" Search as characters are entered
set incsearch

" For regular expressions
set magic

" Show matching brackets when text indicator is over them
set showmatch
" How many tenths of a second to blink when matching brackets
set mat=2

" No error sounds
set noerrorbells

" Show line numbers
set number

" Highlight current line
set cursorline

" Don't redraw while executing macros
set lazyredraw

" Show incomplete commands
set showcmd

" Show current mode
set showmode

" Change buffers without saving
set hidden

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Enable syntax highlighting
syntax enable

" https://github.com/daylerees/colour-schemes/blob/master/vim/colors/legacy.vim
silent! colorscheme legacy

" Set extra options for GUI mode
if has("gui_running")
    set guioptions-=T
    set guioptions+=e
    set t_Co=256
    set guitablabel=%M\ %t
endif

" Set utf8 as standard encoding
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indents
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab

" Fill tabs with spaces
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4
set softtabstop=4

" Linebreak on 500 characters
set lbr
set tw=500

" Auto indent
set ai

" Smart indent
set si

" Wrap lines
set wrap

" Show invisible characters
set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_
set list

""""""""""""""""""""""""""""""
" => Visual mode
""""""""""""""""""""""""""""""

" Visual mode pressing * or # searches for the current selection
vnoremap <silent> * :call VisualSelection('f')<CR>
vnoremap <silent> # :call VisualSelection('b')<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Controls
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Change mapleader
let mapleader=","

" Treat long lines as break lines (useful when moving around in them)
map j gj
map k gk

" Enable mouse in all modes
set mouse=a

" Exit insert mode faster
imap jk <Esc>
