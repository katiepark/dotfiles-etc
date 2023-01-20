" Turn on ALE extension for airline
let g:airline#extensions#ale#enabled = 1

" Specify which linters should run
" TODO: this could be moved to ftplugin files per language
let g:ale_linters = {
  \ 'ruby':
    \ [
      \ 'rubocop',
      \ 'ruby',
      \ 'brakeman',
      \ 'cspell',
      \ 'rails_best_practices',
      \ 'debride',
      \ 'solargraph',
      \ 'sorbet'
    \ ],
  \ 'javascript': ['prettier'],
  \ 'css': ['prettier'],
  \ 'scss': ['prettier'],
\ }

let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['prettier'],
\   'ruby': ['rubocop'],
\   'css': ['prettier'],
\   'scss': ['prettier'],
\}

" Set this variable to 1 to fix files when you save them.
let g:ale_fix_on_save = 1
