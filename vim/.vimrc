set nocompatible
filetype plugin on

" Instalação automatica do vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

" ========================================================================
"                               PLUGINS
" ========================================================================

call plug#begin('~/.vim/plugged')
Plug 'tmhedberg/matchit'
Plug 'tpope/vim-surround'
Plug 'ctrlpvim/ctrlp.vim' |  Plug 'tacahiroy/ctrlp-funky' | Plug 'FelikZ/ctrlp-py-matcher'
Plug 'nixprime/cpsm', { 'do': './install.sh' }
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'tpope/vim-dispatch'
Plug 'bling/vim-airline'
Plug 'scrooloose/syntastic'
Plug 'majutsushi/tagbar'
Plug 'nelstrom/vim-visual-star-search'
Plug 'tpope/vim-repeat'
Plug 'xolox/vim-misc'
Plug 'junegunn/vim-easy-align'
Plug 'rking/ag.vim'
Plug 'scrooloose/nerdtree'
Plug 'tommcdo/vim-exchange'
Plug 'tomtom/tcomment_vim'
Plug 'vim-scripts/ReplaceWithRegister'
Plug 'rstacruz/sparkup'
Plug 'xolox/vim-session'
Plug 'godlygeek/tabular'
Plug 'Raimondi/delimitMate'
Plug 'terryma/vim-expand-region'
Plug 'simnalamburt/vim-mundo', { 'on': ['GundoToggle'] }
Plug 'docunext/closetag.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-fugitive'
Plug 'lervag/vimtex', { 'for': 'tex' }
" Plug 'ervandew/supertab'
Plug 'Valloric/YouCompleteMe', { 'on': [], 'do': './install.sh' }
Plug 'zef/vim-cycle'
Plug 'jez/vim-superman'
Plug 'haya14busa/incsearch.vim'
" Plug 'Shougo/vimproc.vim'
" Plug 'm2mdas/phpcomplete-extended'
" Plug 'm2mdas/phpcomplete-extended-laravel'
" Plug 'tobyS/vmustache'
" Plug 'tobyS/pdv'
" Plug 'chrisbra/csv.vim'
Plug 'dhruvasagar/vim-table-mode'
Plug 'ervandew/eclim'
Plug 'ConradIrwin/vim-bracketed-paste' "Automatic :set paste
Plug 'mattn/ctrlp-register'

" Syntax
Plug 'Chiel92/vim-autoformat'
Plug 'sheerun/vim-polyglot'
Plug 'reedes/vim-pencil'
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'ekalinin/Dockerfile.vim'
Plug 'othree/html5.vim'
Plug 'posva/vim-vue'
Plug 'xolox/vim-notes'
Plug 'vim-scripts/indentpython.vim'
Plug 'tpope/vim-markdown'

" Color Schemes
Plug 'reedes/vim-colors-pencil'
Plug 'morhetz/gruvbox'
Plug 'flazz/vim-colorschemes'
Plug 'tomasr/molokai'
Plug 'sickill/vim-monokai'
Plug 'altercation/vim-colors-solarized'
Plug 'joshdick/onedark.vim'
Plug 'chrisbra/Colorizer'

" Custom TextObjects
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-function', { 'do': 'mkdir ./after/ftplugin/php; cp ./after/ftplugin/java/textobj-function.vim ./after/ftplugin/php/'}
Plug 'thinca/vim-textobj-function-javascript'
Plug 'kana/vim-textobj-line'
Plug 'rbonvall/vim-textobj-latex'
Plug 'captbaritone/better-indent-support-for-php-with-html'
Plug 'christoomey/vim-tmux-navigator'



" Plug 'benekastah/neomake'
" Plug 'nathanaelkane/vim-indent-guides'
" Plug 'joonty/vdebug'
" Plug 'airblade/vim-gitgutter'
" Plug 'xolox/vim-easytags'
" Plug 'kana/vim-textobj-indent'
" Plug 'mattn/emmet-vim'
"
call plug#end()

" ========================================================================
"                          Configurações Gerais
" ========================================================================

if has('autocmd')
    filetype plugin indent on
endif
if has('syntax') && !exists('g:syntax_on')
    syntax enable
endif

" Configurações gerais do arquivo
set autoindent
set smartindent
set backspace=indent,eol,start
set linebreak
set nolist
set whichwrap+=<,>,h,l
" set complete-=i
set complete+=k,kspell
set complete+=t
set thesaurus+=~/.vim/spell/th_pt_BR.txt
set showmatch
set showmode
set smarttab
set nrformats-=octal
set shiftround
set encoding=utf-8 nobomb
" Timeout
" set notimeout
set ttimeout
set ttimeoutlen=50
set copyindent
set cpoptions+=$
set nofoldenable

" Salvar arquivo 'undo' depois de fechar o arquivo
set undofile
set undodir=~/.vim/undo

" Definir diretorio atual automaticamente
set noautochdir

" Novas janelas divididas sempre aparecem do lado direito ou embaixo
set splitright
set splitbelow

" Configurações da Busca
set incsearch
set hlsearch
set magic

" Configurações da commandline
set laststatus=2
set ruler
set showcmd
set wildmenu
" Não resetar o cursor para o inicio da linha
set nostartofline

" Ler arquivo automaticamente caso ele for modificado externalmente
set autoread

" Mudar versão do Regex para 1
set regexpengine=1

" Realça linha atual
" set cursorline

" Numeros relativos
" set relativenumber

" Melhorar performance
set nocursorcolumn
set nocursorline
syntax sync minlines=256
set synmaxcol=256
set lazyredraw
set ttyfast
" set ttyscroll=3

" Definições padrões de identação
set encoding=utf-8
set tabstop=2 shiftwidth=2 expandtab
set listchars=tab:▒░,trail:▓

" Mostrar espaços em branco
set list

set number
set ignorecase
set smartcase

" Ativar o mouse, just for fun.
if has('mouse')
  set mouse=a
endif

" Força os buffers a ficarem escondidos (hidden)
set hidden

" Não salvar arquivos de backup
set nobackup
set nowritebackup
set noswapfile
set fileformats=unix,dos,mac

" Configuração de auto completar para funcionar com o YCM
set completeopt=menuone,longest

" S-k abre a ajuda para a palavra selecionada
set keywordprg=":help"

" Compartilhar Clipboard com o sistema
set clipboard=unnamedplus

" Desabilitar arquivos desnecessarios
set wildignore+=*.o,*.out,*.obj,.git,*.rbc,*.rbo,*.class,.svn,*.gem

" Ignorar Imagens e arquivos de Log
set wildignore+=*.gif,*.jpg,*.png,*.log

" Ignorar zip e irmãos
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz

" Ignorar algumas pastas
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,/lib/*,*/Vendor/*

" ========================================================================
"                               KEYBINDS
" ========================================================================

" Toggle Paste mode
set pastetoggle=<F2>

" Mapeando <leader> para " " Espaço"
nnoremap <Space> <nop>
let mapleader = ' '
let maplocalleader = ' '

" Movimentação de uma linha com Shift+Arrow Keys
nnoremap <S-Up> :m-2<CR>
nnoremap <S-Down> :m+<CR>
inoremap <S-Up> <Esc>:m-2<CR>
inoremap <S-Down> <Esc>:m+<CR>

" Mover linhas no modo visual
vnoremap <S-Down> :m '>+1<CR>gv=gv
vnoremap <S-Up> :m '<-2<CR>gv=gv

" Modifica a movimentação por linhas visuais
nnoremap j gj
nnoremap k gk

" Salvar arquivo como root
cmap w!! w !sudo tee % <CR>

" Disabilitar C-z, use sempre uuuuu
nnoremap <C-z> <nop>

" Y, Copiar a linha inteira
map Y y$

" lazy ':'
nnoremap ; :

" <leader>h limpa as buscas
nmap <leader>h :set nohlsearch<CR>

" Abreviações nos comandos
cnoreabbrev W w
cnoreabbrev Q q

" Quebrar linha em dois
nmap <leader>lb i<cr><esc>

" Mover pela janelas
" Tentar fazer uso adequado do nosso inimigo arrow keys
map <up>      :wincmd k<CR>
map <down>    :wincmd j<CR>
map <right>   :wincmd l<CR>
map <left>    :wincmd h<CR>
" map <c-k>     :wincmd k<CR>
" map <c-j>     :wincmd j<CR>
" map <c-l>     :wincmd l<CR>
" map <c-h>     :wincmd h<CR>

" Mover pelos buffers, nem uso muito prefiro <leader>Number
map <C-right> :bnext<CR>
map <C-left>  :bprevious<CR>

" Faz com que < e > continue com a seleção
vnoremap < <gv
vnoremap > >gv

" Mapeando jj para ESC
inoremap jj <ESC>

" Auto completar html tags com espaço
iabbrev </ </<C-X><C-O>

" Abrir um buffer limpo
nmap <leader>t :enew<cr>

" Proximo Buffer
nmap <leader>k :bnext<CR>
nmap <leader><Tab> :bnext<CR>

" Buffer anterior
nmap <leader>j :bprevious<CR>

" Fechar um buffer (Buffer Close)
nmap <leader>q :bd<CR>

" Remover Espaços em branco
map <Leader>T :%s/\s\+$//<CR>

" Transformar tabs em espaços no documento
map <Leader>R :retab<CR>

" Corrigir erros de digitação
nnoremap <C-s> [s1z=<c-o>
inoremap <C-s> <c-g>u<Esc>[s1z=`]A<c-g>u

" Salvar quando sair do insert mode
inoremap <Esc> <Esc>:w<CR>

" Salvar arquivo com <leader>s
nnoremap <leader>s :w<cr>

" ========================================================================
"                          Configuração dos Plugins
" ========================================================================

" vim-plug
let g:plug_timeout = 5000 "Necessário porcausa das compilações

" delimitMate
let delimitMate_expand_cr = 1

" VDebug
let g:vdebug_options= {
\    "port":               9000,
\    "server":             '172.17.42.1',
\    "timeout":            20,
\    "on_close":           'detach',
\    "break_on_open":      1,
\    "ide_key":            '',
\    "path_maps":          {"/var/www": "/home/rafael/Documentos/monografia-node.js/Projeto Video Interativo/www"},
\    "debug_window_level": 0,
\    "debug_file_level":   0,
\    "debug_file":         "",
\    "watch_window_style": 'expanded',
\    "marker_default":     '⬦',
\    "marker_closed_tree": '▸',
\    "marker_open_tree":   '▾'
\}

" Git Gutter
let g:gitgutter_eager       = 0
let g:gitgutter_realtime    = 0
let g:gitgutter_on_bufenter = 0

" Vim-Markdown
let g:vim_markdown_folding_disabled = 1

" Vim-Session
let g:session_autosave = "yes"
let g:session_autoload = "no"
set sessionoptions-=options
set sessionoptions-=help


" MatchTagAways
let g:mta_filetypes = {
    \ 'html':  1,
    \ 'xhtml': 1,
    \ 'xml':   1,
    \ 'jinja': 1,
    \ 'php':   1,
    \ 'blade': 1,
    \ 'vue':   1,
    \}

" Syntastic
let g:syntastic_error_symbol        = "✗"
let g:syntastic_warning_symbol      = "⚠"
let g:syntastic_php_checkers        = ['php', 'phpcs']
let g:syntastic_javascript_checkers = ['jshint']
let g:syntastic_html_jshint_args    = "--extract=always"
let g:syntastic_php_jshint_args     = "--extract=always"
let g:syntastic_python_checkers     = ['flake8']
let g:syntastic_python_flake8_args  = '--ignore="E501,E302,E261,E701,E241,E126,E127,E128,W801"'

" Vim Surround
let g:surround_indent = 1
autocmd FileType tex let g:surround_{char2nr('c')} = "\\\1command\1{\r}" " Latex Binding c
autocmd FileType tex
      \ map <buffer> <leader>wbf ysiwctextbf<CR> |
      \ map <buffer> <leader>wit ysiwctextit<CR> |
      \ vmap <buffer> <c-b> Sctextbf<CR> |
      \ vmap <buffer> <c-i> Sctextit<CR>
" Visual mapping
xmap ' S'
xmap " S"
xmap [ S[
xmap { S{
xmap ( S(

" Polyglot
let g:polyglot_disabled = ['latex', 'dockerfile', 'git']

" Vim-Javascript
let javascript_enable_domhtmlcss = 1
let b:javascript_fold            = 0

" Vim Javascript Libraries
let g:used_javascript_libs = 'underscore,jquery,requirejs'

" VimTex
let g:vimtex_latexmk_continuous           = 1
let g:vimtex_latexmk_options              = '-pdf'
let g:vimtex_view_method                  = 'zathura'
let g:vimtex_fold_enabled                 = 0
let g:vimtex_latexmk_background           = 1
let g:vimtex_quickfix_ignore_all_warnings = 0
let g:vimtex_quickfix_open_on_warning     = 0

" Autoformat
noremap <leader>f :Autoformat<CR><CR>

" SuperTab
" let g:SuperTabDefaultCompletionType    = "<C-n>"

" CtrlP
if exists("g:ctrl_user_command")
    unlet g:ctrlp_user_command
endif

" Usando Silver_Searcher
let g:ctrlp_user_command            = 'ag %s -i --nocolor --hidden --ignore-case --silent
            \ --ignore .git
            \ --ignore .svn
            \ --ignore .hg
            \ --ignore .DS_Store
            \ --ignore "**/lib/*"
            \ --ignore "**/Vendor/*"
            \ --ignore "**/*.pyc"
            \ -g ""'
let g:ctrlp_custom_ignore          = '\v[\/]\.(DS_Storegit|hg|svn|node_modules|lib|Vendor)$'
if has('nvim')
  let g:ctrlp_match_func             = { 'match': 'pymatcher#PyMatch' }
else
  let g:ctrlp_match_func             = { 'match': 'cpsm#CtrlPMatch' }
  " let g:ctrlp_match_func             = { 'match': 'pymatcher#PyMatch' }
endif
let g:ctrlp_match_window           = 'bottom,order:ttb,results:20'
let g:ctrlp_switch_buffer          = 0
let g:ctrlp_working_path_mode      = 'a'
let g:ctrlp_clear_cache_on_exit    = 1
let g:ctrlp_cache_dir              = $HOME . '/.cache/ctrlp'
let g:ctrlp_extensions             = ['funky', 'register']
let g:ctrlp_funky_syntax_highlight = 1
let g:ctrlp_open_new_file          = "t"
nnoremap <leader>@ :CtrlPFunky<CR>
nnoremap <leader>b :CtrlPBuffer<CR>
map <F5> :CtrlPClearCache<CR>

" Ultisnip
" let g:UltiSnipsExpandTrigger       = "<c-j>"
" let g:UltiSnipsJumpForwardTrigger  = "<c-j>"
" let g:UltiSnipsJumpBackwardTrigger = "<c-k>"
let g:UltiSnipsExpandTrigger       = "<Tab>"
let g:UltiSnipsJumpForwardTrigger  = "<Tab>"
let g:UltiSnipsJumpBackwardTrigger = "<S-Tab>"
let g:UltiSnipsListSnippets        = "<C-L>"
let g:UltiSnipsEditSplit           = "vertical"
let g:did_UltiSnips_vim_after      = 1
let g:UltiSnipsSnippetDirectories  = ["~/.vim/plugged/vim-snippets/UltiSnips", "UltiSnips"]

" vim-airline
let g:airline#extensions#tabline#enabled          = 1
let g:airline_powerline_fonts                     = 1
let g:airline#extensions#tabline#left_sep         = ' '
let g:airline#extensions#tabline#left_alt_sep     = ' '
let g:airline#extensions#tabline#buffer_idx_mode  = 1
let g:airline#extensions#tabline#buffer_nr_format = '%s: '
let g:airline#extensions#tabline#formatter        = 'unique_tail'
let g:airline#extensions#tabline#fnamemod         = ':t'
let g:airline#extensions#whitespace#enabled       = 0
let g:airline#extensions#branch#enabled           = 1

nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9

let g:airline#extensions#bufferline#enabled = 0
let g:airline#extensions#virtualenv#enabled = 0
let g:airline#extensions#eclim#enabled      = 0
let g:airline#extensions#nrrwrgn#enabled    = 0
let g:airline#extensions#capslock#enabled   = 0
let g:airline#extensions#windowswap#enabled = 0
let g:airline_theme='badwolf'

" Sparkup
let g:sparkupNextMapping = '<C-q>'

" easytags
set tags+=~/.vimtags;
let g:easytags_dynamic_files  = 2
let g:easytags_events         = ['BufWritePost']
let b:easytags_auto_highlight = 0
let g:easytags_async          = 1
let g:easytags_opts           = ['--fields=+l --PHP-kinds=+cf']
let g:easytags_syntax_keyword = 0

" TagBar
nmap <C-t> :TagbarToggle<CR>
let g:tagbar_autofocus                             = 1
let g:tagbar_type_php                              = {
            \ 'ctagstype' : 'php',
            \ 'kinds'   : [
            \ 'i:interfaces',
            \ 'c:classes',
            \ 'd:constant definitions',
            \ 'f:functions',
            \ 'j:javascript functions:1'
            \ ]
            \ }

" YouCompleteMe
let g:ycm_key_list_select_completion                    = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion                  = ['<C-p>', '<Up>']
let g:ycm_global_ycm_extra_conf                         = '~/ycm_extra_conf.py'
let g:ycm_autoclose_preview_window_after_insertion      = 1
let g:ycm_min_num_of_chars_for_completion               = 3
let g:ycm_collect_identifiers_from_tags_files           = 1
let g:ycm_add_preview_to_completeopt                    = 0
let g:ycm_auto_trigger                                  = 1
let g:ycm_complete_in_comments                          = 1
let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_complete_in_comments                          = 1
let g:ycm_semantic_triggers                             = {
  \   'c' : ['->', '.'],
  \   'objc' : ['->', '.', 're!\[[_a-zA-Z]+\w*\s', 're!^\s*[^\W\d]\w*\s',
  \             're!\[.*\]\s'],
  \   'ocaml' : ['.', '#'],
  \   'cpp,objcpp' : ['->', '.', '::'],
  \   'perl' : ['->'],
  \   'php' : ['->', '::'],
  \   'cs,java,javascript,typescript,d,python,perl6,scala,vb,elixir,go' : ['.'],
  \   'ruby' : ['.', '::'],
  \   'lua' : ['.', ':'],
  \   'erlang' : [':'],
\ }

augroup load_ycm
  autocmd!
  autocmd! InsertEnter *
        \ call plug#load('YouCompleteMe')     |
        \ if exists('g:loaded_youcompleteme') |
        \   call youcompleteme#Enable()       |
        \ endif                               |
        \ autocmd! load_ycm
augroup END

" " Enable omni completion.
autocmd FileType css           setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType python        setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml           setlocal omnifunc=xmlcomplete#CompleteTags
autocmd FileType php           setlocal omnifunc=phpcomplete_extended#CompletePHP

" Easy EasyAlign
vmap <leader>a <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

" Ag Silver Seacher
let g:ag_prg="ag  --vimgrep --smart-case --silent"
let g:ag_highlight=1

" Nerdtree
map <leader>n :NERDTreeToggle<CR>
map <leader>e :NERDTreeFind<CR>

let NERDTreeIgnore     = ['\.py[cd]$', '\~$', '\.swo$', '\.swp$', '^\.git$', '^\.hg$', '^\.svn$', '\.bzr$']
let NERDTreeShowHidden = 1
let NERDTreeMinimalUI  = 1
let NERDTreeWinSize    = 40
let NERDTreeDirArrows  = 1
let NERDTreeQuitOnOpen = 1

" Gundo
nnoremap <leader>gu :GundoToggle<CR>
let g:gundo_width          = 60
let g:gundo_preview_height = 30
let g:gundo_right          = 1

" Vim Fugitive
nnoremap <Leader>gs  :Gstatus<CR>
nnoremap <Leader>gr  :Gremove<CR>
nnoremap <Leader>gl  :Dispatch git pull<CR>
nnoremap <Leader>glo :Glog<CR>
nnoremap <Leader>gb  :Gblame<CR>
nnoremap <Leader>gm  :Gmove<CR>
nnoremap <Leader>gp  :Dispatch git push<CR>
nnoremap <Leader>gR  :Gread<CR>
nnoremap <Leader>gg  :Git
nnoremap <Leader>gd  :Gdiff<CR>
nnoremap <Leader>gco :Gcommit<CR>

" Vim Notes
let g:notes_directories = ['~/Documentos/Notes', '~/Dropbox/Shared Notes']
let g:notes_suffix = '.note'

" Configurações do GVIM
if has('gui_running')
  set guifont=Dejavu\ Sans\ Mono\ for\ Powerline\ 10
  set guioptions-=m  "remove menu bar
  set guioptions-=T  "remove toolbar
  set guioptions-=r  "remove right-hand scroll bar
  set guicursor+=a:blinkon0
  set guiheadroom=0
endif

" Watch for Changes
let autoreadargs={'autoread':1}

" Incsearch
let g:incsearch#auto_nohlsearch = 1
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)
map n  <Plug>(incsearch-nohl-n)
map N  <Plug>(incsearch-nohl-N)
map *  <Plug>(incsearch-nohl-*)
map #  <Plug>(incsearch-nohl-#)
map g* <Plug>(incsearch-nohl-g*)
map g# <Plug>(incsearch-nohl-g#)
let g:incsearch#magic = '\v' " very magic

" Eclim
let g:EclimCompletionMethod = 'omnifunc'

" Vim-expand-region
vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)

" Gruvbox
let g:gruvbox_italic        = 0
let g:gruvbox_bold          = 1
let g:gruvbox_contrast_dark = 'hard'

" ========================================================================
"                              Auto Grupos
" ========================================================================


augroup configgroup
    autocmd!

    au FileType markdown,mkd UltiSnipsAddFiletypes markdown

    au BufNewFile,BufRead *.ctp set filetype=php

    au BufNewFile,BufRead *.blade.php set filetype=blade.php
    au BufNewFile,BufRead *.vue set filetype=html.javascript.vue

augroup END

augroup pencil
  autocmd!
  autocmd FileType markdown,mkd call pencil#init()
                            \ | setl spell spelllang=pt,en_us fdl=4 noru nonu nornu
                            \ | setl fdo+=search

  autocmd Filetype git,gitsendemail,*commit*,*COMMIT*
                            \   call pencil#init({'wrap': 'hard', 'textwidth': 72})
                            \ | setl spell spelllang=pt,en_us et sw=2 ts=2 noai
  autocmd Filetype mail         call pencil#init({'wrap': 'hard', 'textwidth': 60})
                            \ | setl spell spelllang=pt,en_us et sw=2 ts=2 noai nonu nornu
  autocmd Filetype html,xml     call pencil#init({'wrap': 'soft'})
                            \ | setl spell spelllang=pt,en_us et sw=2 ts=2
augroup END

" Voltar para posição anterior
augroup resCur
    autocmd!
    autocmd BufReadPost * call setpos(".", getpos("'\""))
augroup END

" Salvar arquivos quando perder o foco do buffer ou do vim
set autowrite
au FocusLost * :wa

" ========================================================================
"                              Configurações Extras
"   - Funções, etc
" ========================================================================

" Tig
command! Tig :Dispatch tig

function! ConfirmQuit(writeFile)
    if (a:writeFile)
        if (expand('%:t')=="")
            echo "Não é possivel salvar um arquivo sem nome."
            return
        endif
        :write
    endif

    if (winnr('$')==1 && tabpagenr('$')==1)
        if (confirm("Você realmente deseja sair ?", "&Sim\n&Não", 2)==1)
            :quit
        endif
    else
        :quit
    endif
endfu

cnoremap <silent> <leader>q<CR>  :call ConfirmQuit(0)<CR>

" Text Object para indentação
onoremap <silent>ai :<C-U>cal <SID>IndTxtObj(0)<CR>
onoremap <silent>ii :<C-U>cal <SID>IndTxtObj(1)<CR>
vnoremap <silent>ai :<C-U>cal <SID>IndTxtObj(0)<CR><Esc>gv
vnoremap <silent>ii :<C-U>cal <SID>IndTxtObj(1)<CR><Esc>gv

function! s:IndTxtObj(inner)
  let curline = line(".")
  let lastline = line("$")
  let i = indent(line(".")) - &shiftwidth * (v:count1 - 1)
  let i = i < 0 ? 0 : i
  if getline(".") !~ "^\\s*$"
    let p = line(".") - 1
    let nextblank = getline(p) =~ "^\\s*$"
    while p > 0 && ((i == 0 && !nextblank) || (i > 0 && ((indent(p) >= i && !(nextblank && a:inner)) || (nextblank && !a:inner))))
      -
      let p = line(".") - 1
      let nextblank = getline(p) =~ "^\\s*$"
    endwhile
    normal! 0V
    call cursor(curline, 0)
    let p = line(".") + 1
    let nextblank = getline(p) =~ "^\\s*$"
    while p <= lastline && ((i == 0 && !nextblank) || (i > 0 && ((indent(p) >= i && !(nextblank && a:inner)) || (nextblank && !a:inner))))
      +
      let p = line(".") + 1
      let nextblank = getline(p) =~ "^\\s*$"
    endwhile
    normal! $
  endif
endfunction

" Abrir a configuração
function! s:config()
  :e $MYVIMRC
endfunction
command! Config call s:config()


" ========================================================================
"                              ARCO-IRIS
" ========================================================================

set background=dark

colorscheme gruvbox
" colorscheme molokai

let g:solarized_termcolors=256

" Visual Select Color
hi Visual gui=NONE guibg=White guifg=Black
hi Visual cterm=NONE ctermbg=White ctermfg=Black

" Cor de palavras erradas
hi SpellBad cterm=underline ctermfg=red
hi SpellBad gui=undercurl guisp=red guifg=red
