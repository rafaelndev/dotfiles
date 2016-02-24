" vim:fdm=marker
set nocompatible
filetype plugin on

" ================  Instalação do Vim-Plug  ================ {{{
if has('unix')
  if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
          \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall | source $MYVIMRC
  endif
else
  if has('win32')
    md ~\vimfiles\autoload

    $uri = 'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
    (New-Object Net.WebClient).DownloadFile($uri, (Resolve-Path ~\vimfiles\autoload\plug.vim))
  endif
endif
" }}}

" ================         Plugins          ================ {{{
call plug#begin('~/.vim/plugged')
Plug 'tmhedberg/matchit'
Plug 'tpope/vim-surround'
" Plug 'ctrlpvim/ctrlp.vim' |  Plug 'tacahiroy/ctrlp-funky' | Plug 'FelikZ/ctrlp-py-matcher'
" if has('unix')
"   Plug 'nixprime/cpsm', { 'do': './install.sh' }
" endif
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'tpope/vim-dispatch'
Plug 'ryanoasis/vim-devicons'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/syntastic'
Plug 'majutsushi/tagbar'
Plug 'nelstrom/vim-visual-star-search'
Plug 'tpope/vim-repeat'
Plug 'xolox/vim-misc'
Plug 'junegunn/vim-easy-align'
Plug 'scrooloose/nerdtree' , { 'on':  [ 'NERDTreeToggle', 'NERDTreeFind' ] }
Plug 'tommcdo/vim-exchange'
Plug 'tomtom/tcomment_vim'
Plug 'vim-scripts/ReplaceWithRegister'
Plug 'mattn/emmet-vim'
" Plug 'jiangmiao/auto-pairs'
Plug 'cohama/lexima.vim'
" Plug 'Raimondi/delimitMate'
Plug 'terryma/vim-expand-region'
Plug 'simnalamburt/vim-mundo' , { 'on': ['GundoToggle'] }
Plug 'tpope/vim-fugitive'
Plug 'lervag/vimtex', { 'for': 'tex' }
Plug 'Shougo/deoplete.nvim'
Plug 'Shougo/neoinclude.vim'
Plug 'Shougo/neco-vim'
Plug 'Shougo/neco-syntax'

" Plug 'Valloric/YouCompleteMe', { 'on': [], 'do': './install.sh --clang-completer --gocode-completer --tern-completer '  }
Plug 'davidhalter/jedi-vim', { 'for': 'python' }
Plug 'zef/vim-cycle'
Plug 'jez/vim-superman'
Plug 'haya14busa/incsearch.vim'
Plug 'haya14busa/incsearch-fuzzy.vim'
Plug 'Shougo/vimproc.vim'

" Plug 'm2mdas/phpcomplete-extended'
" Plug 'm2mdas/phpcomplete-extended-laravel'
Plug 'shawncplus/phpcomplete.vim'
Plug 'dhruvasagar/vim-table-mode'
Plug 'mattn/ctrlp-register'
Plug 'mhinz/vim-startify'
Plug 'arnaud-lb/vim-php-namespace'
Plug 'vim-php/tagbar-phpctags.vim'
Plug 'tobyS/vmustache'
Plug 'tobyS/pdv'
Plug 'adoy/vim-php-refactoring-toolbox'
Plug 'kana/vim-operator-user'
Plug 'mhinz/vim-grepper'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': 'yes \| ./install --all' }
Plug 'junegunn/fzf.vim'
Plug '1995eaton/vim-better-javascript-completion'
Plug 'tmux-plugins/vim-tmux-focus-events'
Plug 'christoomey/vim-tmux-navigator'
" Plug 'ternjs/tern_for_vim', { 'do': 'npm install' }
Plug 'jszakmeister/vim-togglecursor'
Plug 'davidhalter/jedi', { 'for': 'python' }
Plug 'osyo-manga/vim-over'
Plug 'terryma/vim-multiple-cursors'
Plug 'docunext/closetag.vim', { 'for': ['html', 'xml', 'php', 'blade']}
Plug 'triglav/vim-visual-increment'
Plug 'matze/vim-move'

" Syntax
Plug 'Chiel92/vim-autoformat'
Plug 'sheerun/vim-polyglot'
Plug 'reedes/vim-pencil'
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'ekalinin/Dockerfile.vim'
Plug 'othree/html5.vim'
Plug 'posva/vim-vue'
Plug 'xolox/vim-notes', { 'for': 'notes' }
Plug 'tpope/vim-markdown'
Plug 'aklt/plantuml-syntax'
Plug 'Valloric/MatchTagAlways', { 'for': ['html', 'xml', 'php', 'blade' ]}
Plug 'captbaritone/better-indent-support-for-php-with-html'

" Color Schemes
Plug 'morhetz/gruvbox'
Plug 'flazz/vim-colorschemes'
Plug 'tomasr/molokai'
Plug 'gorodinskiy/vim-coloresque'
Plug 'NLKNguyen/papercolor-theme'

" Custom TextObjects
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-function', { 'do': 'mkdir ./after/ftplugin/php; cp ./after/ftplugin/java/textobj-function.vim ./after/ftplugin/php/'}
Plug 'thinca/vim-textobj-function-javascript'
Plug 'kana/vim-textobj-line'
Plug 'rbonvall/vim-textobj-latex'
Plug 'saaguero/vim-textobj-pastedtext'

" Plug 'nathanaelkane/vim-indent-guides'
" Plug 'joonty/vdebug'
" Plug 'airblade/vim-gitgutter'
" Plug 'xolox/vim-easytags'
" Plug 'kana/vim-textobj-indent'
" Plug 'mattn/emmet-vim'
"
call plug#end()

" }}}

" ================   Configurações Gerais   ================ {{{
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
set timeout
set timeoutlen=1000
set ttimeout
set ttimeoutlen=10
set copyindent
set cpoptions+=$
set nofoldenable
" Sem VisualBells
set novb
set t_vb=
set modeline

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

" Mudar versão do Regex para 0 (Automatico)
set regexpengine=0

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
set completeopt=longest

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

" Session
set sessionoptions-=options
set sessionoptions-=help

" set shell=/usr/bin/zsh\ -l

if executable("ag")
    let g:ackprg = 'ag --nogroup --nocolor --column'
endif

" }}}

" ================         Keybinds         ================ {{{

" Toggle Paste mode
set pastetoggle=<F2>

" Mapeando <leader> para " " Espaço"
nnoremap <Space> <nop>
let mapleader = ' '
let maplocalleader = ' '

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
nnoremap \ :

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

" Salvar arquivo com <leader>s
nnoremap <leader>s :w<cr>

" Selecionar autocompletar com <Enter>
" inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" }}}

" ================ Configuração dos Plugins ================ {{{

" vim-plug
let g:plug_timeout = 5000 "Necessário por causa das compilações

" " delimitMate
" let g:delimitMate_expand_cr = 2
" let g:delimitMate_jump_expansion = 1
" let g:delimitMate_balance_matchpairs = 1
" let g:delimitMate_insert_eol_marker = 2
" au FileType c,php let b:delimitMate_eol_marker = ";"

" Lexima
let g:lexima_enable_space_rules = 0

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
let g:syntastic_warning_symbol         = "✹"
let g:syntastic_error_symbol           = "✖"
" let g:syntastic_php_checkers           = ["php", "phpcs", "phpmd"]
let g:syntastic_php_checkers           = ["php"]
let g:syntastic_php_phpcs_args         = '--standard=PSR2 -n'
let g:syntastic_javascript_checkers    = ["jshint"]
let g:syntastic_html_jshint_args       = "--extract=always"
let g:syntastic_javascript_jshint_args = "--extract=always"
let g:syntastic_python_checkers        = ["flake8"]
let g:syntastic_python_flake8_args     = '--ignore="E501,E302,E261,E701,E241,E126,E127,E128,W801"'
let g:syntastic_check_on_wq            = 0
let g:syntastic_aggregate_errors       = 1

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
let g:polyglot_disabled = ['latex', 'dockerfile', 'git', 'gitcommit', 'javascript']

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
" let g:formatdef_phpfmt = "'fmt.phar --psr2 --no-backup '.shellescape(expand('%:p'))"
let g:formatdef_phpfmt = "'fmt.phar --psr2 --no-backup -'"
let g:formatters_php = ['phpfmt']
let g:formatters_blade = ['tidy_html']
let g:formatters_blade_php = ['tidy_html']
let g:autoformat_verbosemode = 1
noremap <leader>f :Autoformat<CR><CR>

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
" map <F5> :CtrlPClearCache<CR>

"FZF
nnoremap <leader>@ :BTags<CR>
nnoremap <leader>b :Buffers<CR>
nnoremap <C-p> :FZF<CR>

" Ultisnip
let g:UltiSnipsExpandTrigger       = "<c-j>"
let g:UltiSnipsJumpForwardTrigger  = "<c-j>"
let g:UltiSnipsJumpBackwardTrigger = "<c-k>"
let g:UltiSnipsListSnippets        = "<C-L>"
let g:UltiSnipsEditSplit           = "vertical"
let g:did_UltiSnips_vim_after      = 1
let g:UltiSnipsSnippetDirectories  = ["~/.vim/plugged/vim-snippets/UltiSnips", "UltiSnips"]
let g:UltiSnipsUsePythonVersion    = 2

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
let g:airline#extensions#tagbar#enabled           = 1
let g:airline#extensions#syntastic#enabled        = 0
let g:airline#extensions#hunks#enabled            = 0
let g:airline_section_y                           = 'Tab: %{&tabstop}'

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

" Emmet
let g:user_emmet_leader_key='<C-e>'

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
let g:ycm_key_list_select_completion                    = ['<C-n>', '<Down>', '<Tab>']
let g:ycm_key_list_previous_completion                  = ['<C-p>', '<Up>', '<S-Tab>']
let g:ycm_global_ycm_extra_conf                         = '~/ycm_extra_conf.py'
let g:ycm_autoclose_preview_window_after_insertion      = 1
let g:ycm_min_num_of_chars_for_completion               = 2
let g:ycm_collect_identifiers_from_tags_files           = 1
let g:ycm_seed_identifiers_with_syntax                  = 0
" let g:ycm_add_preview_to_completeopt                    = 1
let g:ycm_auto_trigger                                  = 1
let g:ycm_complete_in_comments                          = 1
let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_cache_omnifunc                                = 1
let g:ycm_use_ultisnips_completer                       = 1
let g:ycm_complete_in_comments                          = 1
let g:ycm_filepath_completion_use_working_dir           = 1
let g:ycm_semantic_triggers                             = {
      \   'c' : ['->', '.'],
      \   'php' : [],
      \   'objc' : ['->', '.', 're!\[[_a-zA-Z]+\w*\s', 're!^\s*[^\W\d]\w*\s',
      \             're!\[.*\]\s'],
      \   'ocaml' : ['.', '#'],
      \   'cpp,objcpp' : ['->', '.', '::'],
      \   'perl' : ['->'],
      \   'cs,java,javascript,typescript,d,python,perl6,scala,vb,elixir,go' : ['.'],
      \   'vim' : ['re![_a-zA-Z]+[_\w]*\.'],
      \   'ruby' : ['.', '::'],
      \   'lua' : ['.', ':'],
      \   'erlang' : [':'],
      \ }
" \   'php' : ['->', '::', '(', 'use ', 'namespace ', '\'],
let g:ycm_filetype_specific_completion_to_disable = {
      \ 'php': 1
      \}

augroup load_ycm
  autocmd!
  autocmd! InsertEnter *
        \ call plug#load('YouCompleteMe') |
        \ if exists('g:loaded_youcompleteme')          |
        \   call youcompleteme#Enable()                |
        \ endif                                        |
        \ autocmd! load_ycm
augroup END
inoremap <expr> <CR> pumvisible() ? "\<C-Y>" : "\<CR>"

" Deoplete
if has('nvim')
  let g:deoplete#auto_completion_start_length = 1
  let g:deoplete#enable_at_startup = 1
  " let g:deoplete#enable_refresh_always = 1
  let g:deoplete#delimiters = ['/', '.', '::', ':', '#']
  let g:deoplete#sources={}
  let g:deoplete#sources._=['omni', 'buffer', 'member', 'ultisnips', 'file', 'tag']
  call deoplete#custom#set('_', 'matchers', ['matcher_fuzzy', 'matcher_full_fuzzy'])
  call deoplete#custom#set('_', 'converters',
        \ ['converter_auto_paren',
        \  'converter_auto_delimiter', 'remove_overlap', 'converter_remove_paren'])
  let g:deoplete#omni#input_patterns = get(g:,'deoplete#omni#input_patterns',{})
  let g:deoplete#omni#input_patterns.tex =
        \ '\v\\%('
        \ . '\a*%(ref|cite)\a*%(\s*\[[^]]*\])?\s*\{[^{}]*'
        \ . '|includegraphics%(\s*\[[^]]*\])?\s*\{[^{}]*'
        \ . '|%(include|input)\s*\{[^{}]*'
        \ . ')'

  let g:neoinclude#exts          = {'php': ['php', 'inc', 'tpl']}
  let g:neoinclude#max_processes = 5


  if has("patch-7.4.314")
    set shortmess+=c
  endif
  " use tab to forward cycle
  inoremap <silent><expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
  " use tab to backward cycle
  inoremap <silent><expr><s-tab> pumvisible() ? "\<c-p>" : "\<s-tab>"
endif

" Enable omni completion.
autocmd FileType css           setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType python        setlocal omnifunc=jedi#completions
autocmd FileType xml           setlocal omnifunc=xmlcomplete#CompleteTags
autocmd FileType php           setlocal omnifunc=phpcomplete#CompletePHP
" autocmd FileType javascript setlocal omnifunc=tern#Complete
autocmd FileType vim setlocal omnifunc=syntaxcomplete#Complete
autocmd FileType vim setlocal foldenable

" Easy EasyAlign
vmap <leader>a <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

" Multiple Cursor
function! Multiple_cursors_before()
    let g:ycm_auto_trigger = 0
endfunction
 
function! Multiple_cursors_after()
    let g:ycm_auto_trigger = 1
endfunction

" Vim Grepper
let g:grepper = {
      \ 'tools': ['agnew'],
      \ 'agnew': {
      \   'grepprg':    'ag --vimgrep -F',
      \ }}
nnoremap <leader>ag :Grepper -tool agnew  -open -switch<cr>

" Nerdtree
map <leader>n :NERDTreeToggle<CR>
map <leader>e :NERDTreeFind<CR>

let NERDTreeIgnore     = ['\.py[cd]$', '\~$', '\.swo$', '\.swp$', '^\.git$', '^\.hg$', '^\.svn$', '\.bzr$']
let NERDTreeShowHidden = 1
let NERDTreeMinimalUI  = 1
let NERDTreeWinSize    = 40
let NERDTreeDirArrows  = 1
let NERDTreeQuitOnOpen = 0

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
  " set guifont=Dejavu\ Sans\ Mono\ for\ Powerline\ 10
  set guifont=Source\ Code\ Pro\ for\ Powerline\ Medium\ 10
  set guioptions-=m  "remove menu bar
  set guioptions-=T  "remove toolbar
  set guioptions-=r  "remove right-hand scroll bar
  set guicursor+=a:blinkon0
  set guiheadroom=0
endif

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
map z/ <Plug>(incsearch-fuzzyspell-/)
map z? <Plug>(incsearch-fuzzyspell-?)
map zg/ <Plug>(incsearch-fuzzyspell-stay)

" Vim-expand-region
vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)

" Gruvbox
let g:gruvbox_italic        = 0
let g:gruvbox_bold          = 1
let g:gruvbox_contrast_dark = 'hard'

" PHP Complete
let g:phpcomplete_cache_taglists = 1

" PHP Extended
let g:phpcomplete_index_composer_command = "composer"
let g:phpcomplete_extended_use_default_mapping = 0

" Php Refactoring
let g:vim_php_refactoring_use_default_mapping = 0
let g:vim_php_refactoring_phpdoc = 'pdv#DocumentWithSnip'
let g:pdv_template_dir = $HOME ."/.vim/plugged/pdv/templates_snip"

" Tagbar PHP
let g:tagbar_phpctags_bin='/home/rafael/Downloads/phpctags/bin/phpctags'

" Startify
let g:startify_session_dir         = '~/.vim/sessions'
let g:startify_session_persistence = 1
let g:startify_list_order = [
      \ ['   Sessões:'],
      \ 'sessions',
      \ ['   Arquivos usados recentimente:'],
      \ 'files',
      \ ['   Arquivos mais usados nessa pasta::'],
      \ 'dir',
      \ ['   Favoritos:'],
      \ 'bookmarks',
      \ ]
let g:startify_custom_header = [
      \ '              ______       __           _   _   _ ________  ____     ',
      \ '              | ___ \     / _|         | | | | | |_   _|  \/  ( )    ',
      \ '              | |_/ /__ _| |_ __ _  ___| | | | | | | | | .  . |/ ___ ',
      \ '              |    // _` |  _/ _` |/ _ \ | | | | | | | | |\/| | / __|',
      \ '              | |\ \ (_| | || (_| |  __/ | \ \_/ /_| |_| |  | | \__ \',
      \ '              \_| \_\__,_|_| \__,_|\___|_|  \___/ \___/\_|  |_/ |___/',
      \ '',
      \ '',
      \ ]

" Ternjs
let g:tern_show_argument_hints = 'on_hold'
let g:tern_show_signature_in_pum = 1

" Togglecursor
let g:togglecursor_default = 'block'
let g:togglecursor_insert = 'line'

" Vim-Over
nnoremap <C-F> :OverCommandLine %s/<CR>

" }}}

" ================       Auto Grupos        ================ {{{

augroup configgroup
  autocmd!

  au FileType markdown,mkd UltiSnipsAddFiletypes markdown

  au BufNewFile,BufRead *.ctp set filetype=php

  au BufNewFile,BufRead *.blade.php set filetype=blade.php
  au BufNewFile,BufRead *.vue set filetype=html.javascript.vue
  au BufNewFile,BufRead *.note set filetype=notes

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
au FocusLost * update
au FocusGained * if &autoread | silent checktime | endif

" Recarregar o NERDTree
autocmd WinEnter * if exists('b:NERDTree') | execute 'normal R' | endif

" Fix QuickFix
au WinEnter,BufEnter * if &filetype == "qf" | call AdjustWindowHeight(3, 10)
function! AdjustWindowHeight(minheight, maxheight)
  exe max([min([line("$"), a:maxheight]), a:minheight]) . "wincmd _"
endfunction

" Salvar quando sair do insert mode
au InsertLeave * if &mod == 1 | update | endif

" }}}

" ================   Configurações Extras   ================ {{{

" Tig
command! Tig :Dispatch tig
let g:python_host_skip_check = 1
let g:python3_host_skip_check = 1

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

command! -nargs=0 -bar Qargs execute 'args ' . QuickfixFilenames()
function! QuickfixFilenames()
  " Building a hash ensures we get each buffer only once
  let buffer_numbers = {}
  for quickfix_item in getqflist()
    let buffer_numbers[quickfix_item['bufnr']] = bufname(quickfix_item['bufnr'])
  endfor
  return join(values(buffer_numbers))
endfunction
" }}}

" ================        Arco-Iris         ================ {{{

set background=dark

" if has('nvim')
"  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
" endif

colorscheme gruvbox
" colorscheme molokai

let g:solarized_termcolors=256

" Visual Select Color
hi Visual gui=NONE guibg=White guifg=Black
hi Visual cterm=NONE ctermbg=White ctermfg=Black

" Cor de palavras erradas
hi SpellBad cterm=underline ctermfg=red
hi SpellBad gui=undercurl guisp=red guifg=red

hi StartifyHeader  ctermfg=40

hi! BufTabLineCurrent guibg=#151515 guifg=#ffffff gui=None cterm=None ctermbg=190 ctermfg=17
hi! BufTabLineHidden guibg=#151515 guifg=#ffffff gui=None cterm=None ctermbg=238 ctermfg=15
hi! BufTabLineFill guibg=#151515 guifg=#ffffff gui=None cterm=None ctermbg=234 ctermfg=15
