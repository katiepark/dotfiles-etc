set background=dark
set termguicolors " Finally support true colors in console vim

" Show CSS colors as background colors
let g:Hexokinase_highlighters = ['backgroundfull']

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

" Specify colors for terminal mode, based on seoul256
let g:terminal_ansi_colors = [
  \'#4e4e4e', '#d68787', '#5f865f', '#d8b05f',
  \'#85add4', '#d7afaf', '#87afaf', '#d0d0d0',
  \'#626262', '#d75f87', '#87af87', '#ffd787',
  \'#add4fb', '#ffafaf', '#87d7d7', '#e4e4e4' ]
highlight Terminal guibg='#252525' guifg='#d8d8d8'
