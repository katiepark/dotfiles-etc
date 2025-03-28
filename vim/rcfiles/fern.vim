" Mappings and customizations for Fern file explorer

let g:fern#default_hidden = 1
let g:fern#disable_default_mappings   = 1
let g:fern#disable_drawer_auto_quit   = 1
let g:fern#disable_viewer_hide_cursor = 1

" Open project drawer on left
noremap <silent> <Leader>d :Fern . -drawer -width=35 -toggle<CR><C-w>=
" Open project drawer, expand current buffer
noremap <silent> <Leader>f :Fern . -drawer -reveal=% -width=35<CR><C-w>=

" Custom symbols
let g:fern#mark_symbol                       = '●'
let g:fern#renderer#default#collapsed_symbol = '▷ '
let g:fern#renderer#default#expanded_symbol  = '▼ '
let g:fern#renderer#default#leading          = '  '
let g:fern#renderer#default#leaf_symbol      = ''
let g:fern#renderer#default#root_symbol      = '~ '

function! FernInit() abort
  nmap <buffer><expr>
        \ <Plug>(fern-my-open-expand-collapse)
        \ fern#smart#leaf(
        \   "\<Plug>(fern-action-open:select)",
        \   "\<Plug>(fern-action-expand)",
        \   "\<Plug>(fern-action-collapse)",
        \ )
  nmap <buffer> <CR> <Plug>(fern-my-open-expand-collapse)
  nmap <buffer> <2-LeftMouse> <Plug>(fern-my-open-expand-collapse)
  nmap <buffer> m <Plug>(fern-action-mark:toggle)j
  nmap <buffer> N <Plug>(fern-action-new-file)
  nmap <buffer> K <Plug>(fern-action-new-dir)
  nmap <buffer> D <Plug>(fern-action-remove)
  nmap <buffer> C <Plug>(fern-action-move)
  nmap <buffer> R <Plug>(fern-action-rename)
  nmap <buffer> x <Plug>(fern-action-open:split)
  nmap <buffer> v <Plug>(fern-action-open:vsplit)
  nmap <buffer> t <Plug>(fern-action-open:tabedit)
  nmap <buffer> r <Plug>(fern-action-reload)
  nmap <buffer> <nowait> d <Plug>(fern-action-hidden:toggle)
  nmap <buffer> <nowait> < <Plug>(fern-action-leave)
  nmap <buffer> <nowait> > <Plug>(fern-action-enter)
endfunction

function! FernPreviewSettings() abort
  nmap <silent> <buffer> p <Plug>(fern-action-preview:auto:toggle)
  nmap <silent> <buffer> <C-d> <Plug>(fern-action-preview:scroll:down:half)
  nmap <silent> <buffer> <C-u> <Plug>(fern-action-preview:scroll:up:half)
endfunction

augroup FernEvents
  autocmd!
  autocmd FileType fern call FernInit()
  autocmd FileType fern call FernPreviewSettings()
augroup END
