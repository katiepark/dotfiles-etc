" jj instead of escape
imap jj <esc>
imap jw <esc>:w

" Move by visual lines rather than machine lines
map <Down> gj
map <Up> gk
noremap j gj
noremap k gk

" Map ctrl-movement keys to window switching
map <leader>k <C-w><Up>
map <leader>j <C-w><Down>
map <leader>l <C-w><Right>
map <leader>h <C-w><Left>

" Redo
nnoremap U <C-r>

" Shortcut to paste last yanked text
nnoremap <leader>p "0p
xnoremap <leader>p "0p
vnoremap <leader>p "0p

" Leave cursor at end of pasted text
nnoremap p p`]

" set text wrapping toggles
nmap <silent> <leader>tw :set invwrap<CR>:set wrap?<CR>

" Clear trailing whitespace with F5
:nnoremap <silent> <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>

" Underline the current line with '='
nmap <silent> <leader>ul :t.<CR>Vr=

" FZF mappings
nnoremap <C-p> :FZF<CR>

" Redraw
nnoremap <leader>rd :redraw!<cr>


