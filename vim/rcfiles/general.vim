let mapleader=" " " Map leader key to space

" Disable weird defaults
set nocompatible

" Autoindent causing all sorts of struggles
let g:polyglot_disabled = ['autoindent']

" Attempt to determine the type of a file based on its name and possibly its
" contents. Use this to allow intelligent auto-indenting for each filetype,
" and for plugins that are filetype specific.
filetype indent plugin on

" Enable syntax highlighting
syntax on

set guifont=Monaco:h15

set number " Show line numbers
set ruler  " Show line and column number
set nowrap

set tabstop=2     " spaces per tab visually
set softtabstop=2 " spaces per tab when editing
set sw=2          " Use 2 spaces when indenting visual blocks
set expandtab     " tabs are spaces
set list                          " Show invisible characters
set backspace=indent,eol,start    " backspace through everything in insert mode

set foldmethod=indent
set foldlevel=20

set autoread " Automatically read buffers in when changed on disk

" List chars
set listchars=""           " Reset the listchars
set listchars=tab:\ \      " a tab should display as "  ", trailing whitespace as "."
set listchars+=trail:.     " show trailing spaces as dots
set listchars+=extends:>   " The character to show in the last column when wrap is
                           " off and the line continues beyond the right of the screen
set listchars+=precedes:<  " The character to show in the last column when wrap is
                           " off and the line continues beyond the left of the screen

" More natural ordering for vertical and horizontal splits
set splitright
set splitbelow

" Change the cursor shape based on mode
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"
