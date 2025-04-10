" Basic setup
source ~/.vim/rcfiles/general.vim

" vim-plug for plugin management
" Specify a directory for plugins
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } " Fuzzy finder
Plug 'junegunn/fzf.vim'                 " Helpful fzf commands
Plug 'vim-airline/vim-airline'          " Fancy statusline
Plug 'vim-airline/vim-airline-themes'   " Themes for statusline
Plug 'lifepillar/vim-cheat40'           " 40-col vim cheatsheet

" Fern + plugins
Plug 'lambdalisue/fern.vim'             " File explorer/project drawer
Plug 'lambdalisue/fern-hijack.vim'      " Replace netrw with fern
Plug 'yuki-yano/fern-preview.vim'       " Add preview window to fern

" Editing
" Plug 'github/copilot.vim'               " Welcome our new robot overlords
Plug 'ddollar/nerdcommenter'            " Nice comment handling
Plug 'alvan/vim-closetag'               " Automatically close tags
Plug 'cohama/lexima.vim'                " Auto-close parens, other pairs
Plug 'ervandew/supertab'                " Tab completion in insert mode
Plug 'chrisbra/NrrwRgn'                 " Narrow region editing
Plug 'mg979/vim-visual-multi'           " Sublime-style multiple cursors
Plug 'bronson/vim-trailing-whitespace'  " Highlight trailing whitespace
Plug 'tpope/vim-repeat'                 " Allow . command for plugin maps
Plug 'tpope/vim-surround'               " Edit surroundings in pairs
Plug 'tpope/vim-abolish'                " Smart substitution with word variants
Plug 'junegunn/goyo.vim'                " Distraction-free writing

" Snippets
" Plug 'SirVer/ultisnips'                 " Snippet engine
" Plug 'honza/vim-snippets'               " Snippet library

" Git integration
Plug 'tpope/vim-fugitive'               " Call git commands from vim
Plug 'airblade/vim-gitgutter'           " Show status gutter

" Syntax/languages
Plug 'dense-analysis/ale'               " Asynchronous linting
Plug 'sheerun/vim-polyglot'             " Many language
Plug 'chrisbra/csv.vim'                 " CSV tools
Plug 'lepture/vim-jinja'                " Jinja/nunjucks highlighting
Plug 'plasticboy/vim-markdown'          " Syntax highlighting and nice code folding for Markdown
Plug 'tpope/vim-rails'                  " Tons of features for rails projects
Plug 'tpope/vim-rake'                   " Nicer file navigation for ruby libraries
Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' } " Highlight css colors

" Color schemes
Plug 'tomasr/molokai'                   " Port of TextMate's monokai
Plug 'junegunn/seoul256.vim'            " Based on Seoul Colors
Plug 'altercation/vim-colors-solarized' " The classic
Plug 'romainl/flattened'                " Solarized clone that is lower maintenance
Plug 'arcticicestudio/nord-vim'         " Arctic and elegant
Plug 'sts10/vim-pink-moon'              " Dark and pastel
Plug 'morhetz/gruvbox'                  " Retro groove
Plug 'NLKNguyen/papercolor-theme'       " Bright with dark/light modes
Plug 'ghifarit53/tokyonight-vim'        " Nightlife vibes

" Helpful mappings
Plug 'tpope/vim-eunuch'                 " Enable some unix commands
Plug 'tpope/vim-unimpaired'             " Just really helpful mappings, some conflict with ALE plugin

" Initialize plugin system
call plug#end()

" Source all other config files
source ~/.vim/rcfiles/colors.vim
source ~/.vim/rcfiles/editing.vim
source ~/.vim/rcfiles/fern.vim
source ~/.vim/rcfiles/fzf.vim
source ~/.vim/rcfiles/linters.vim
source ~/.vim/rcfiles/mappings.vim
source ~/.vim/rcfiles/search.vim
