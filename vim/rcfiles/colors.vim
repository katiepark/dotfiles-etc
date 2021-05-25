set background=dark
set termguicolors " Finally support true colors in console vim

" Slightly darker bg for seoul256 theme
let g:seoul256_background = 235
colorscheme seoul256

" Use original monokai bg color (gray)
let g:molokai_original = 1
" colorscheme molokai

" colorscheme pink-moon

" This is the solarized clone that is less of a pain in terminal
"colorscheme flattened_dark

if has('gui_running')
  colorscheme flattened_dark
else
  colorscheme seoul256
endif
