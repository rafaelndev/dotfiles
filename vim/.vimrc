" vim:fdm=marker
set nocompatible

if has('nvim')
  set termguicolors
endif
filetype off

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
Plug 'Shougo/neosnippet.vim' | Plug 'Shougo/neosnippet-snippets' | Plug 'chrisgillis/vim-bootstrap3-snippets'
Plug 'tpope/vim-dispatch'
Plug 'ryanoasis/vim-devicons', { 'on': [ 'NERDTreeToggle', 'NERDTreeFind', 'Startify']}
Plug 'itchyny/lightline.vim'
Plug 'benekastah/neomake', { 'on': ['Neomake'] }
Plug 'majutsushi/tagbar' | Plug 'vim-php/tagbar-phpctags.vim', { 'for': ['php'] }
Plug 'nelstrom/vim-visual-star-search'
Plug 'tpope/vim-repeat'
Plug 'xolox/vim-misc'
Plug 'junegunn/vim-easy-align'
Plug 'scrooloose/nerdtree' , { 'on':  [ 'NERDTreeToggle', 'NERDTreeFind' ] }
Plug 'tommcdo/vim-exchange'
Plug 'tomtom/tcomment_vim'
Plug 'vim-scripts/ReplaceWithRegister'
Plug 'mattn/emmet-vim'
Plug 'cohama/lexima.vim', { 'on': []}
Plug 'terryma/vim-expand-region'
Plug 'simnalamburt/vim-mundo' , { 'on': ['MundoToggle'] }
Plug 'tpope/vim-fugitive'
Plug 'lervag/vimtex', { 'for': ['tex', 'bib'] }
Plug 'Konfekt/FastFold'

if has('nvim')
  Plug 'Shougo/deoplete.nvim'
  Plug 'carlitux/deoplete-ternjs', { 'for': ['js'] }
  Plug 'Shougo/context_filetype.vim'
  Plug 'zchee/deoplete-jedi', { 'for': 'python' }
  Plug 'zchee/deoplete-go', { 'do': 'make'}
endif

Plug 'ternjs/tern_for_vim', { 'do': 'npm install', 'for': ['js'] }
Plug 'Rip-Rip/clang_complete', { 'for': ['c', 'cpp', 'h'] }

Plug 'zef/vim-cycle'
Plug 'Shougo/vimproc.vim'
Plug 'phpvim/phpcd.vim', { 'for': 'php' , 'do': 'composer update' }
Plug 'vim-scripts/progressbar-widget'
Plug 'ludovicchabant/vim-gutentags'
Plug 'suan/vim-instant-markdown'
Plug 'dhruvasagar/vim-table-mode'
Plug 'mhinz/vim-startify'
Plug 'arnaud-lb/vim-php-namespace'

Plug 'tobyS/vmustache'
Plug 'tobyS/pdv'
Plug 'mikehaertl/pdv-standalone'
Plug 'adoy/vim-php-refactoring-toolbox', { 'for': ['php'] }
Plug 'kana/vim-operator-user'
Plug 'haya14busa/vim-operator-flashy'
Plug 'mhinz/vim-grepper'
Plug 'Numkil/ag.nvim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': 'yes \| ./install --all' }
Plug 'junegunn/fzf.vim'
Plug '1995eaton/vim-better-javascript-completion'
Plug 'tmux-plugins/vim-tmux-focus-events'
Plug 'christoomey/vim-tmux-navigator'
Plug 'jszakmeister/vim-togglecursor'
Plug 'davidhalter/jedi', { 'for': 'python' }
Plug 'osyo-manga/vim-over'
Plug 'docunext/closetag.vim', { 'for': ['html', 'xml', 'php', 'blade']}
Plug 'triglav/vim-visual-increment'
Plug 'matze/vim-move'
Plug 'wincent/ferret'
Plug 'dyng/ctrlsf.vim'
let g:ctrlsf_default_root = 'project'
let g:ctrlsf_mapping = {
    \ "next": "n",
    \ "prev": "N",
    \ }
let g:ctrlsf_position = 'bottom'
Plug 'justinmk/vim-sneak'
Plug 'wsdjeg/vim-cheat'
Plug 'wincent/loupe'
Plug 'airblade/vim-gitgutter'
let g:gitgutter_realtime = 0
let g:gitgutter_eager = 0
Plug 'KabbAmine/zeavim.vim'
let g:zv_file_types = {
      \   'css'                      : 'css,foundation,bootstrap_4',
      \   '.htaccess'                : 'apache_http_server',
      \   '\v^(G|g)runt\.'           : 'gulp,javascript,nodejs',
      \   '\v^(G|g)ulpfile\.'        : 'grunt',
      \   '\v^(md|mdown|mkd|mkdn)$'  : 'markdown',
      \   'php'                      : 'laravel',
      \   '.blade.php'               : 'laravel',
      \ }

" Syntax
Plug 'Chiel92/vim-autoformat'
" Plug 'sheerun/vim-polyglot'
Plug 'othree/javascript-libraries-syntax.vim', { 'for': 'javascript' }
Plug 'ekalinin/Dockerfile.vim', { 'for': 'Dockerfile' }
Plug 'othree/html5.vim', { 'for': ['html', 'blade', 'php'] }
Plug 'stephpy/vim-php-cs-fixer', { 'for': ['php'] }
Plug 'posva/vim-vue', { 'for': 'vue'}
Plug 'xolox/vim-notes', { 'for': 'notes' }
Plug 'plasticboy/vim-markdown', { 'for': 'markdown' }
Plug 'cespare/vim-toml'
Plug 'aklt/plantuml-syntax'
Plug 'Valloric/MatchTagAlways', { 'for': ['html', 'xml', 'php', 'blade' ]}
Plug 'StanAngeloff/php.vim', { 'for': ['php'] }
Plug 'jwalton512/vim-blade', { 'for': 'blade' }

" Color Schemes
Plug 'morhetz/gruvbox'
Plug 'flazz/vim-colorschemes'
Plug 'tomasr/molokai'
Plug '0ax1/lxvc'

" Custom TextObjects
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-function', { 'do': 'mkdir ./after/ftplugin/php; cp ./after/ftplugin/java/textobj-function.vim ./after/ftplugin/php/'}
Plug 'thinca/vim-textobj-function-javascript'
Plug 'kana/vim-textobj-line'
Plug 'rbonvall/vim-textobj-latex'
Plug 'saaguero/vim-textobj-pastedtext'


" Plug 'rafaelndev/deoplete-laravel-plugin', {'for': ['php'], 'do': 'composer update'}

Plug 'joonty/vdebug'
" Plug 'kana/vim-textobj-indent'
"
call plug#end()

" }}}

" ================   Configurações Gerais   ================ {{{
filetype plugin indent on
syntax enable

" Configurações gerais do arquivo
set autoindent
set smartindent
set cindent
set breakindent
set showbreak=\ \
set backspace=indent,eol,start
set linebreak
set nolist
set whichwrap+=<,>,h,l
set complete+=t,i
set complete-=k,kspell
set thesaurus+=~/.vim/spell/th_pt_BR.txt
set showmatch
set showmode
set smarttab
set nrformats-=octal
set shiftround
if !has('nvim')
  set encoding=utf-8 nobomb
endif
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
let &t_Co = 256
set modeline

" Salvar arquivo 'undo' depois de fechar o arquivo
set undofile
set undodir=~/.vim/undo

" Definir diretorio atual automaticamente
set noautochdir

" Conceal Level
set conceallevel=2 concealcursor=niv

" Novas janelas divididas sempre aparecem do lado direito ou embaixo
set splitright
set splitbelow

" Configurações da Busca
set incsearch
set hlsearch
set magic

" Configurações da commandline
" set laststatus=2
set ruler
" set showcmd
set wildmenu
" Não resetar o cursor para o inicio da linha
set nostartofline

" Ler arquivo automaticamente caso ele for modificado externalmente
set autoread

" Mudar versão do Regex para 0 (Automatico)
set regexpengine=1

" Realça linha atual
set cursorline

" Numeros relativos
" set relativenumber

" Melhorar performance
set nocursorcolumn
syntax sync minlines=256
set synmaxcol=256
set lazyredraw
set ttyfast
" set ttyscroll=3

" Definições padrões de identação
set tabstop=2 shiftwidth=2 expandtab
set listchars=tab:▒░,trail:▓
set listchars-=eol

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
set completeopt=menu,menuone,longest,preview
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

" Tags
set tags=tags

" Session
set sessionoptions-=options
set sessionoptions-=help

" set shell=/usr/bin/zsh\ -l

if executable("ag")
    let g:ag_prg="ag --vimgrep --smart-case -F -U"
    let g:ackprg = 'ag --nogroup --nocolor --column -U'
endif

set noshowmode

" ABBREV

iabbrev dockerip 172.17.0.1
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
" nnoremap ; :
nnoremap \ :

" <leader>h limpa as buscas
nmap <leader>h <Plug>(LoupeClearHighlight)

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

nnoremap <leader>q :call utils#CloseSplitOrDeleteBuffer()<CR>
nnoremap <leader>qb :bp<cr>:bd #<cr>

" Salvar mais rápido
nmap <leader>w :w!<cr>

" Remover Espaços em branco
map <Leader>T :%s/\s\+$//<CR>

" Transformar tabs em espaços no documento
map <Leader>R :retab<CR>

" Corrigir erros de digitação
nnoremap <C-s> [s1z=<c-o>
inoremap <C-s> <Esc>[s1z=gi

" Salvar arquivo com <leader>s
nnoremap <leader>s :w<cr>

nnoremap <leader>how :Dispatch howdoi -n 5
nnoremap <C-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>
inoremap <C-X><C-S> <C-O>:Snippets<CR>

" Completar tags manualmente
inoremap <silent> <expr> <C-]> utils#manualTagComplete()


augroup load_insert_plugin
  autocmd!
  autocmd InsertEnter * call StartInsertPlugins()
                     \| autocmd! load_insert_plugin
augroup END


function! StartInsertPlugins() abort
  if !has('NeoSnippetsList')
    call plug#load('neosnippet.vim', 'lexima.vim')
    call lexima#init()
    inoremap <expr> <CR> pumvisible() ? "\<C-Y>" : lexima#expand('<LT>CR>', 'i')
endif
endfunction

" }}}

" ================ Configuração dos Plugins ================ {{{

" vim-plug
let g:plug_timeout = 5000 "Necessário por causa das compilações

" Lexima
let g:lexima_enable_space_rules = 0

" VDebug
let g:vdebug_options= {
      \    "port":               10000,
      \    "server":             '127.0.0.1',
      \    "timeout":            20,
      \    "on_close":           'detach',
      \    "break_on_open":      1,
      \    "ide_key":            'netbeans-xdebug',
      \    "path_maps":          {"/var/www": "/home/rafael/Documentos/monografia-node.js/Projeto-Video-Interativo/www"},
      \    "debug_window_level": 0,
      \    "debug_file_level":   0,
      \    "debug_file":         "",
      \    "watch_window_style": 'expanded',
      \    "marker_default":     '⬦',
      \    "marker_closed_tree": '▸',
      \    "marker_open_tree":   '▾'
      \}


" Vim-Markdown
let g:vim_markdown_folding_disabled = 1

" Table-Mode
let g:table_mode_corner="|"

" Instant Markdown
let g:instant_markdown_autostart = 0

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

" Gutentags
" let g:gutentags_cache_dir = "~/.vim_project_tags"
let g:gutentags_project_info = []
let g:gutentags_define_advanced_commands = 1
let g:gutentags_project_root = ['.git', 'composer.json']
let g:gutentags_exclude = ['*.css', '*.html', '*.js']
let g:gutentags_generate_on_write = 1
let g:gutentags_auto_set_tags = 0
call add(g:gutentags_project_info, {'type': 'python', 'file': 'setup.py'})
call add(g:gutentags_project_info, {'type': 'ruby', 'file': 'Gemfile'})
call add(g:gutentags_project_info, {'type': 'php', 'file': 'composer.json'})

" Neomake
autocmd! BufWritePost * Neomake
let g:neomake_php_jshint_maker = {
      \ 'exe': 'jshint',
      \ 'args': ['--verbose --extract=always'],
      \ 'errorformat': '%A%f: line %l\, col %v\, %m \(%t%*\d\)',
      \ }

let g:neomake_blade_tidy_maker = {
      \ 'exe': 'tidy',
      \ 'args': ['-e', '-q', '--gnu-emacs', 'true'],
      \ 'errorformat': '%A%f:%l:%c: Warning: %m',
      \ }
let g:neomake_blade_enabled_makers      = ['tidy']
let g:neomake_verbose                 = 0
let g:neomake_php_phpcs_args_standard = 'PSR2'
let g:neomake_php_enabled_makers      = ['php']

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
let g:polyglot_disabled = ['latex', 'dockerfile', 'git', 'gitcommit', 'javascript', 'markdown']

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
let g:vimtex_quickfix_ignore_all_warnings = 1
let g:vimtex_quickfix_open_on_warning     = 0
let g:vimtex_latexmk_progname             = 'nvr'
let g:vimtex_quickfix_autojump = 0
let g:vimtex_quickfix_mode = 0

" Autoformat
" let g:formatdef_phpfmt = "'fmt.phar --psr2 --no-backup '.shellescape(expand('%:p'))"
let g:formatdef_phpfmt = "'fmt.phar --psr2 --no-backup -'"
let g:formatters_php = ['phpfmt']
let g:formatters_blade = ['tidy_html']
let g:formatters_blade_php = ['tidy_html']
let g:autoformat_verbosemode = 1
noremap <leader>f :Autoformat<CR><CR>

"FZF
nnoremap <leader>@ :BTags<CR>
nnoremap <leader>b :Buffers<CR>
nnoremap <C-p> :FZF<CR>

" Neosnippets
" Plugin key-mappings.
imap <C-j>     <Plug>(neosnippet_expand_or_jump)
smap <C-j>     <Plug>(neosnippet_expand_or_jump)
xmap <C-j>     <Plug>(neosnippet_expand_target)

let g:neosnippet#enable_snipmate_compatibility = 1
let g:neosnippet#snippets_directory='~/.vim/snippets/'
let g:neosnippet#enable_auto_clear_markers = 0
let g:neosnippet#enable_conceal_markers = 0

" Lightline
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'fugitive', 'readonly', 'filename', 'modified', ] ],
      \   'right': [ [ 'lineinfo' ],
      \              [ 'percent' ],
      \              [ 'tagbar', 'fileformat', 'fileencoding', 'filetype'] ],
      \ },
      \ 'component': {
      \   'lineinfo': '%l\%L [%p%%], %c, %n',
      \   'readonly': '%{&readonly?"\ue0a2":""}',
      \ },
      \ 'component_function': {
      \   'fugitive': 'LightLineFugitive',
      \   'tagbar': 'TagBarCurrentTag',
      \   'gutentags': '%{gutentags#statusline("[Generating...]")}'
      \ },
      \ 'separator': { 'left': '', 'right': '' },
      \ 'subseparator': { 'left': '', 'right': '' }
      \ }


let s:fugitive_head = ''
function! GetFugitiveHead(timer)
  if exists('*fugitive#head')
    let _ = fugitive#head()
    let s:fugitive_head = strlen(_) ? ' '._ : ''
  endif
endfunction

  function! LightLineFugitive()
    if exists('*fugitive#head')
        return s:fugitive_head
      endif
    endif
    return ''
  endfunction

let s:fugitive_head_timer = timer_start(10000, 'GetFugitiveHead', {'repeat': -1})

let s:tagbar_last_lookup_val = ''
function! GetTagbarCurrentTag(timer)
  let s:tagbar_last_lookup_val = tagbar#currenttag('%s ', '')
endfunction


  function! TagBarCurrentTag()
    if exists('s:tagbar_lookup_timer')
      call timer_stop(s:tagbar_lookup_timer)
    endif
    let s:tagbar_lookup_timer = timer_start(500, 'GetTagbarCurrentTag')
    return s:tagbar_last_lookup_val
  endfunction


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
      \ 'n:namespace',
      \ 'j:javascript functions:1'
      \ ]
      \ }

let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
\ }

" Deoplete
if has('nvim')
  let g:deoplete#auto_complete_start_length = 2
  let g:deoplete#enable_at_startup = 1
  let g:deoplete#file#enable_buffer_path = 1
  " let g:deoplete#enable_refresh_always = 1
  let g:deoplete#delimiters = ['/', '.', '::', ':', '#']
  let g:deoplete#sources={}
  " let g:deoplete#sources._=['buffer', 'member', 'ultisnips', 'file']
  " let g:deoplete#sources._=['buffer', 'member', 'ultisnips', 'file']

  call deoplete#custom#set('_', 'matchers', ['matcher_full_fuzzy'])
  call deoplete#custom#set('_', 'converters',
        \ ['converter_remove_paren', 'converter_auto_delimiter', 'converter_remove_overlap', 'converter_truncate_abbr', 'converter_truncate_menu'])
  let g:deoplete#omni_patterns = get(g:,'deoplete#omni_patters',{})
    let g:deoplete#keyword_patterns = {}

    " let g:deoplete#keyword_patterns._ = '[a-zA-Z_]\k*\(?'
    " let g:deoplete#keyword_patterns.php = '.@'


    let g:deoplete#omni_patterns.cpp = '[^. *\t]\.\w*|[^. *\t]\::\w*|[^. *\t]\->\w*|#include\s*[<"][^>"]*'
    let g:deoplete#omni#input_patterns={}
    let g:deoplete#omni#input_patterns.cpp = ['[^. *\t]\.\w*','[^. *\t]\::\w*','[^. *\t]\->\w*','#include\s*[<"][^>"]*']
    let g:neoinclude#exts          = {'php': ['php', 'inc', 'tpl', 'blade.php']}
    let g:neoinclude#max_processes = 5

    " call deoplete#util#set_pattern(
    "       \ g:deoplete#omni#input_patterns,
    "       \ 'php', [g:deoplete#keyword_patterns.php])

    " autocmd VimEnter * call deoplete#enable_logging('DEBUG', '/tmp/deoplete.log')

    let g:clang_complete_auto = 0
    let g:clang_auto_select = 0
    let g:clang_omnicppcomplete_compliance = 0
    let g:clang_make_default_keymappings = 0

  if has("patch-7.4.314")
    set shortmess+=c
  endif
  " use tab to forward cycle
  inoremap <silent><expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
  " use tab to backward cycle
  inoremap <silent><expr><s-tab> pumvisible() ? "\<c-p>" : "\<s-tab>"
  autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
endif

" Enable omni completion.
autocmd FileType css           setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType xml           setlocal omnifunc=xmlcomplete#CompleteTags
autocmd FileType php           setlocal omnifunc=phpcd#CompletePHP
autocmd FileType javascript setlocal omnifunc=tern#Complete
autocmd FileType vim setlocal omnifunc=syntaxcomplete#Complete
autocmd FileType vim setlocal foldenable

" Easy EasyAlign
vmap <leader>a <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

" " Multiple Cursor
" function! Multiple_cursors_before()
"     let b:ycm_auto_trigger = 0
"     " let b:deoplete_disable_auto_complete = 1
"     let g:deoplete#disable_auto_complete = 1
" endfunction
"
" function! Multiple_cursors_after()
"     let b:ycm_auto_trigger = 1
"     " let b:deoplete_disable_auto_complete = 0
"     let g:deoplete#disable_auto_complete = 0
" endfunction

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
let NERDTreeHijackNetrw = 1

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
  set guifont=Fira\ Mono\ Medium\ for\ Powerline\ 10
  set guioptions-=m  "remove menu bar
  set guioptions-=T  "remove toolbar
  set guioptions-=r  "remove right-hand scroll bar
  set guicursor+=a:blinkon0
  set guiheadroom=0
endif

" Vim-expand-region
vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)

" Gruvbox
let g:gruvbox_italic        = 0
let g:gruvbox_bold          = 1
let g:gruvbox_contrast_dark = 'medium'
let g:gruvbox_invert_selection = 0

" PHP Complete
let g:phpcomplete_cache_taglists = 1
" let g:phpcomplete_parse_docblock_comments = 1

" Php Refactoring
let g:vim_php_refactoring_use_default_mapping = 0
let g:vim_php_refactoring_phpdoc = 'pdv#DocumentWithSnip'
let g:pdv_template_dir = $HOME ."/.vim/plugged/pdv/templates_snip"


" Tagbar PHP
let g:tagbar_phpctags_bin='/opt/scripts/phpctags'

" Startify
let g:startify_session_dir         = '~/.vim/sessions'
let g:startify_session_persistence = 1
let g:startify_enable_unsafe = 1
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

" Ternjs
let g:tern_show_argument_hints = 'on_hold'
let g:tern_show_signature_in_pum = 1

" Togglecursor
let g:togglecursor_default = 'block'
let g:togglecursor_insert = 'line'

" Vim-Over
nnoremap <C-F> :OverCommandLine %s/<CR>
vnoremap <C-F> :'<,'>OverCommandLine s/<CR>
nmap <leader>sw :OverCommandLine %s/\(<c-r>=expand("<cword>")<cr>\)/<CR>/g<left><left>

" Ferret
let g:FerretDispatch = 1
let g:FerretQFMap = 1

" Vim-operator-flashy
map y <Plug>(operator-flashy)
nmap Y <Plug>(operator-flashy)$
let g:operator#flashy#flash_time = 250

" PHP-CS-FIXER
let g:php_cs_fixer_level                  = "psr2"              " which level ?
let g:php_cs_fixer_config                 = "default"             " configuration
let g:php_cs_fixer_php_path               = "php"               " Path to PHP
let g:php_cs_fixer_fixers_list            = "linefeed,short_tag,indentation"
let g:php_cs_fixer_enable_default_mapping = 1     " Enable the mapping by default (<leader>pcd)
let g:php_cs_fixer_dry_run                = 0                    " Call command with dry-run option
let g:php_cs_fixer_verbose                = 1                    " Return the output of command if 1, else an inline information.

" Vim-Sneak
let g:sneak#use_ic_scs = 1

" }}}

" ================       Auto Grupos        ================ {{{

augroup configgroup
  autocmd!

  " au FileType markdown,mkd UltiSnipsAddFiletypes markdown

  au BufNewFile,BufRead *.ctp set filetype=php

  au BufNewFile,BufRead *.blade.php set filetype=blade.php.html
  au BufNewFile,BufRead *.vue set filetype=html.javascript.vue
  au BufNewFile,BufRead *.note set filetype=notes

augroup END


augroup pencil
  autocmd!
  autocmd FileType markdown,mkd
        \ | setl spell spelllang=pt,en_us fdl=4 noru nonu nornu
        \ | setl fdo+=search

  autocmd Filetype mail
        \ | setl spell spelllang=pt,en_us et sw=2 ts=2 noai nonu nornu
augroup END

" Voltar para posição anterior
augroup resCur
  autocmd!
  autocmd BufReadPost * call setpos(".", getpos("'\""))
augroup END

augroup reload_vimrc " {
    autocmd!
    autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END " }

" Salvar arquivos quando perder o foco do buffer ou do vim
set autowrite
au FocusLost * update
au FocusGained * if &autoread | silent checktime | endif

" Recarregar o NERDTree
autocmd WinEnter * if exists('b:NERDTree') | execute 'normal R' | endif

" Fix QuickFix
au WinEnter,BufEnter * if &filetype == "qf" | call utils#AdjustWindowHeight(3, 10)

" Salvar quando sair do insert mode
au InsertLeave * nested call utils#AutoSave()

" F5 Remove espaços em branco
nmap <f5> :%s/\s\+$//e <CR>

" Visual AT
xnoremap @ :<C-u>call utils#ExecuteMacroOverVisualRange()<CR>

" }}}

" ================   Configurações Extras   ================ {{{

" Tig
command! Tig :Dispatch tig
let g:python_host_skip_check = 1
let g:python3_host_skip_check = 1

cnoremap <silent> <leader>q<CR>  :call ils#ConfirmQuit(0)<CR>

" Text Object para indentação
onoremap <silent>ai :<C-U>call utils#IndTxtObj(0)<CR>
onoremap <silent>ii :<C-U>call utils#IndTxtObj(1)<CR>
vnoremap <silent>ai :<C-U>call utils#IndTxtObj(0)<CR><Esc>gv
vnoremap <silent>ii :<C-U>call utils#IndTxtObj(1)<CR><Esc>gv


" Abrir a configuração
command! Config call utils#config()

command! -nargs=0 -bar Qargs execute 'args ' . utils#QuickfixFilenames()

" Profile
command! Profile call utils#profile()<CR>

" }}}

" ================        Arco-Iris         ================ {{{

set background=dark

if has('nvim')
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

colorscheme gruvbox

" map  <silent> <F4> :call gruvbox#hls_toggle()<CR>
" imap <silent> <F4> <ESC>:call gruvbox#hls_toggle()<CR>a
" vmap <silent> <F4> <ESC>:call gruvbox#hls_toggle()<CR>gv

nnoremap <silent> <CR> :call gruvbox#hls_hide()<CR><CR>

nnoremap * :let @/ = ""<CR>:call gruvbox#hls_show()<CR>*
nnoremap / :let @/ = ""<CR>:call gruvbox#hls_show()<CR>/
nnoremap ? :let @/ = ""<CR>:call gruvbox#hls_show()<CR>?

" Cor de palavras erradas
hi SpellBad cterm=underline ctermfg=red
hi SpellBad gui=undercurl guisp=red guifg=red


if has('nvim')
  hi StartifyHeader ctermfg=40 guifg=40
endif

function! GetSnippets() abort
  let snippets = map(values(neosnippet#helpers#get_snippets()), 'v:val.word')
  return snippets
endfunction

function! s:strip(str)
  return substitute(a:str, '^\s*\|\s*$', '', 'g')
endfunction

function! s:snippets_sink(line)
  let snip = split(a:line, "\t")[0]
  execute 'normal! a'.s:strip(snip)."\<c-r>=neosnippet#expand('". snip ."')\<cr>"
endfunction

command! NeoSnippetsList call fzf#run({
  \ 'source':  GetSnippets(),
  \ 'down':    '40%',
  \ 'sink':    function('s:snippets_sink')})

imap <f7> <C-o>:NeoSnippetsList<cr>

" MATCH YIELD LARAVEL
" let t=[] | %s/\v\@yield\(\'\zs.*\w/\=add(t,submatch(0))[-1]/g:
