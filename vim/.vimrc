let mapleader=" " " Map leader key to space

" vim-plug for plugin management
" Specify a directory for plugins
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

Plug 'preservim/nerdtree'               " Tree explorer
Plug 'junegunn/fzf.vim'                 " Fuzzy-finder
Plug 'vim-airline/vim-airline'          " Fancy statusline
Plug 'vim-airline/vim-airline-themes'   " Themes for statusline

" Editing
Plug 'ddollar/nerdcommenter'            " Nice comment handling
Plug 'alvan/vim-closetag'               " Automatically close tags
Plug 'cohama/lexima.vim'                " Auto-close parens, other pairs
Plug 'ervandew/supertab'                " Tab completion in insert mode
Plug 'chrisbra/NrrwRgn'                 " Narrow region editing
Plug 'terryma/vim-multiple-cursors'     " Sublime-style multiple cursors
Plug 'bronson/vim-trailing-whitespace'  " Highlight trailing whitespace
Plug 'tpope/vim-repeat'                 " Allow . command for plugin maps
Plug 'junegunn/goyo.vim'                " Distraction-free writing

" Snippets
Plug 'MarcWeber/vim-addon-mw-utils'     " Snipmate dependency
Plug 'tomtom/tlib_vim'                  " Snipmate dependency
Plug 'garbas/vim-snipmate'              " TextMate-style snippet engine
Plug 'honza/vim-snippets'               " Bundle of snippet files

" Git integration
Plug 'tpope/vim-fugitive'               " Call git commands from vim
Plug 'airblade/vim-gitgutter'           " Show status gutter

" Syntax/languages
Plug 'sheerun/vim-polyglot'             " Many language
Plug 'vim-json'                         " Nice coloring for JSON
Plug 'chrisbra/csv.vim'                 " CSV tools
Plug 'lepture/vim-jinja'                " Jinja/nunjucks highlighting
Plug 'plasticboy/vim-markdown'          " Syntax highlighting and nice code folding for Markdown
Plug 'tpope/vim-rails'                  " Tons of features for rails projects
Plug 'tpope/vim-rake'                   " Nicer file navigation for ruby libraries

" Color schemes
Plug 'tomasr/molokai'                   " Port of TextMate's monokai
Plug 'junegunn/seoul256.vim'            " Based on Seoul Colors
Plug 'altercation/vim-colors-solarized' " The classic
Plug 'arcticicestudio/nord-vim'         " Arctic and elegant
Plug 'sts10/vim-pink-moon'              " Dark and pastel
Plug 'morhetz/gruvbox'                  " Retro groove

" Initialize plugin system
call plug#end()

" Extremely stolen from @gabeisman
function! s:SourceConfigFilesIn(directory)
  let directory_splat = '~/.vim/' . a:directory . '/*'
  for config_file in split(glob(directory_splat), '\n')
    if filereadable(config_file)
        execute 'source' config_file
    endif
  endfor
endfunction

call s:SourceConfigFilesIn('rcfiles')
