" ================         Plugins          ================
command! -nargs=* DeferPlug call g:utils#DeferPluginLoad(<args>)
call plug#begin('~/.vim/plugged')

" ===============          Geral            ================ {{{
" Plug 'tpope/vim-dispatch'
" Plug 'w0rp/ale', { 'on_event': 'BufWritePre'}
Plug 'majutsushi/tagbar'
Plug 'itchyny/lightline.vim'
Plug 'scrooloose/nerdtree' , { 'on':  [ 'NERDTreeToggle', 'NERDTreeFind' ] }
Plug 'Konfekt/FastFold'
Plug 'dhruvasagar/vim-table-mode'
Plug 'machakann/vim-highlightedyank'
Plug 'mhinz/vim-grepper'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'build': './install --all', 'merged': 0 }
Plug 'junegunn/fzf.vim',{ 'do': './install --bin'}
Plug 'jszakmeister/vim-togglecursor'
Plug 'ryanoasis/vim-devicons', { 'on': [ 'NERDTreeToggle', 'NERDTreeFind'], 'rtp': ''}
Plug 'wincent/ferret'
Plug 'pgdouyon/vim-evanesco'
Plug 'equalsraf/neovim-gui-shim'
Plug 'lambdalisue/suda.vim'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
" Plug 'terryma/vim-multiple-cursors'
Plug 'stefandtw/quickfix-reflector.vim'
Plug 'mhinz/vim-signify'
Plug 'christoomey/vim-tmux-navigator'
" Plug 'liuchengxu/vista.vim'
Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] }
Plug 'wellle/context.vim'
Plug 'camspiers/lens.vim'
Plug 'dyng/ctrlsf.vim'
" }}}

" ===============  Manipulação de Texto/Objetos  ============= {{{
Plug 'kana/vim-operator-user'
DeferPlug 'wellle/targets.vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'junegunn/vim-easy-align'
Plug 'tomtom/tcomment_vim'
Plug 'vim-scripts/ReplaceWithRegister'
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-function', { 'build': 'mkdir ./after/ftplugin/php; cp ./after/ftplugin/java/textobj-function.vim ./after/ftplugin/php/'}
Plug 'thinca/vim-textobj-function-javascript'
Plug 'kana/vim-textobj-line'
Plug 'rbonvall/vim-textobj-latex'
Plug 'saaguero/vim-textobj-pastedtext'
Plug 'tmsvg/pear-tree'
Plug 'machakann/vim-swap'
" }}}
" ===============          Completion          ============== {{{
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neoclide/coc-python'
  " Plug 'neoclide/coc-sources'
  " Plug 'neoclide/coc-snippets'
  " Plug 'iamcco/coc-vimlsp'
  " Plug 'neoclide/coc-java'
" Plug 'fatih/vim-go'
" }}}

" ===============            Syntax          ============== {{{
Plug 'hynek/vim-python-pep8-indent', { 'for': 'python' }
Plug 'jelera/vim-javascript-syntax', { 'for': ['javascript', 'html', 'php']}
Plug 'pangloss/vim-javascript', { 'for': ['javascript', 'html', 'php'] }
Plug 'ekalinin/Dockerfile.vim', { 'for': 'Dockerfile' }
Plug 'othree/html5.vim', { 'for': ['html', 'blade', 'php'] }
Plug 'xolox/vim-misc'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown', { 'for': 'markdown' }
Plug 'cespare/vim-toml', { 'for': 'toml'}
Plug 'aklt/plantuml-syntax', { 'for': 'uml'}
Plug 'Valloric/MatchTagAlways', { 'for': ['html', 'xml', 'php', 'blade' ]}
Plug 'udalov/kotlin-vim'
Plug 'baskerville/vim-sxhkdrc'
"}}}

" ===============        Color Schemes        ============== {{{
Plug 'gruvbox-community/gruvbox'
"}}}

call plug#end()
