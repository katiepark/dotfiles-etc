" Various customizations for code/text editing

" MAKE
au FileType make setlocal noexpandtab

" MARKDOWN
au BufRead,BufNewFile *.{md,markdown,mdown,mkd,mkdn,txt} setf markdown
au FileType markdown setlocal wrap linebreak textwidth=72 nolist  " Auto-wrap md files at 72 chars
let g:vim_markdown_auto_insert_bullets = 0                        " Disable auto-bulleting
let g:vim_markdown_new_list_item_indent = 2

" AUTOCOMPLETE/CLOSE
let g:closetag_filenames = "*.html.erb,*.html,*.xhtml,*.phtml.*.mustache"
