set background=dark
set termguicolors " Finally support true colors in console vim

" Slightly darker bg for seoul256 theme
let g:seoul256_background = 234
colorscheme seoul256

" Use original monokai bg color (gray)
let g:molokai_original = 1

if has('gui_running')
  if stridx(getcwd(), '/src/endrun') >= 0
    colorscheme seoul256
  elseif stridx(getcwd(), '/src/graphics') >= 0
    colorscheme gruvbox
  else
    colorscheme flattened_dark
  endif
else
  colorscheme seoul256
endif
