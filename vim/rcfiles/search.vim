set incsearch   " search as we type
set hlsearch    " highlight matches

" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase

" Remove search higlights
map <leader>; :nohlsearch<CR>

" Search for the visual selection
vnoremap / "vy/<c-r>v<cr>
