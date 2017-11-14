" vim:fdm=marker
set nocompatible

if has('nvim')
  set termguicolors
endif

" ================         Plugins          ================ {{{

set runtimepath+=~/.vim/autoload/dein.vim
command! -nargs=+ -bar Dein call dein#add(<args>)
call dein#begin(expand('~/.vim/plugged/'))

" ===============          Geral            ================ {{{
Dein 'Shougo/neosnippet.vim', {'lazy': 1, 'on_event': 'InsertCharPre'}
Dein 'Shougo/neosnippet-snippets', {'lazy': 1, 'on_event': 'InsertCharPre'}
Dein 'tpope/vim-dispatch'
Dein 'skywind3000/asyncrun.vim'
Dein 'itchyny/lightline.vim'
Dein 'w0rp/ale'
Dein 'majutsushi/tagbar'
Dein 'vim-php/tagbar-phpctags.vim', { 'on_ft': ['php'] }
Dein 'scrooloose/nerdtree' , { 'on_cmd':  [ 'NERDTreeToggle', 'NERDTreeFind' ] }
Dein 'embear/vim-localvimrc'
Dein 'Konfekt/FastFold'
Dein 'ludovicchabant/vim-gutentags'
Dein 'vim-scripts/progressbar-widget'
Dein 'suan/vim-instant-markdown'
Dein 'dhruvasagar/vim-table-mode'
Dein 'machakann/vim-highlightedyank'
Dein 'mhinz/vim-grepper'
Dein 'junegunn/fzf', { 'dir': '~/.fzf', 'build': './install --all', 'merged': 0 }
Dein 'junegunn/fzf.vim'
Dein 'christoomey/vim-tmux-navigator'
Dein 'jszakmeister/vim-togglecursor'
Dein 'joonty/vdebug', { 'on_cmd': ['VdebugStart']}
Dein 'ryanoasis/vim-devicons', { 'on_cmd': [ 'NERDTreeToggle', 'NERDTreeFind'], 'rtp': ''}
Dein 'sgur/vim-editorconfig', { 'lazy': 1, 'on_event': 'InsertCharPre' }
Dein 'wincent/ferret'
Dein 'mikehaertl/pdv-standalone', { 'on_ft': ['php']}
Dein 'adoy/vim-php-refactoring-toolbox', { 'on_ft': ['php'] }
Dein 'mhinz/vim-startify'
Dein 'arnaud-lb/vim-php-namespace'
Dein 'davidhalter/jedi', { 'on_ft': ['python'] }
Dein 'osyo-manga/vim-over'
Dein 'justinmk/vim-sneak'
Dein 'pgdouyon/vim-evanesco'
Dein 'irrationalistic/vim-tasks'
Dein 'bfredl/nvim-miniyank'
" }}}

" ===============  Manipulação de Texto/Objetos  ============= {{{
Dein 'kana/vim-operator-user'
Dein 'tmhedberg/matchit'
Dein 'wellle/targets.vim', {'on_event': 'CursorHold'}
Dein 'tpope/vim-surround'
Dein 'tpope/vim-repeat'
Dein 'junegunn/vim-easy-align'
Dein 'tomtom/tcomment_vim'
Dein 'vim-scripts/ReplaceWithRegister'
Dein 'mattn/emmet-vim'
function! s:lexima_start() abort
  call lexima#init()
  inoremap <expr> <CR> pumvisible() ? "\<C-Y>" : lexima#expand('<LT>CR>', 'i')
  call lexima#add_rule({'char': '}', 'at': '\%#\n\s*}', 'leave': '}'})
  call lexima#add_rule({'char': ']', 'at': '\%#\n\s*]', 'leave': ']'})
  call lexima#add_rule({'char': ')', 'at': '\%#\n\s*)', 'leave': ')'})
  call lexima#add_rule({'char': '<?php', 'at': '\%#\n\s*)', 'leave': '?>'})
endfunction
Dein 'cohama/lexima.vim', {
      \ 'lazy': 1,
      \ 'on_event': 'InsertCharPre',
      \ 'hook_post_source': function('s:lexima_start')
      \ }
Dein 'haya14busa/dein-command.vim'
Dein 'kana/vim-textobj-user'
Dein 'kana/vim-textobj-function', { 'build': 'mkdir ./after/ftplugin/php; cp ./after/ftplugin/java/textobj-function.vim ./after/ftplugin/php/'}
Dein 'thinca/vim-textobj-function-javascript'
Dein 'kana/vim-textobj-line'
Dein 'rbonvall/vim-textobj-latex'
Dein 'saaguero/vim-textobj-pastedtext'
Dein 'docunext/closetag.vim', { 'on_ft': ['html', 'xml', 'php', 'blade']}
Dein 'matze/vim-move'
" }}}

" ===============          Completion          ============== {{{
if has('nvim')
Dein 'Shougo/deoplete.nvim', { 'hook_source': 'call deoplete#enable()'}
Dein 'carlitux/deoplete-ternjs', { 'depends': 'deoplete.nvim', 'on_ft': ['javascript'] }
Dein 'zchee/deoplete-jedi', { 'depends': 'deoplete.nvim',  'on_ft': 'python' }
Dein 'zchee/deoplete-go', { 'depends': 'deoplete.nvim', 'build': 'make', 'on_ft': ['go'] }
Dein 'rafaelndev/deoplete-laravel-plugin', {'depends': 'deoplete.nvim','on_ft': ['php'], 'build': 'composer update'}
" Dein 'pbogut/deoplete-padawan', {'depends': 'deoplete.nvim'}
endif
Dein 'Rip-Rip/clang_complete', { 'on_ft': ['c', 'cpp', 'h'] }

Dein 'lvht/phpcd.vim', { 'build': 'composer install', 'on_ft': ['php']}
Dein 'shawncplus/phpcomplete.vim', { 'on_ft': 'php' }
Dein 'KabbAmine/zeavim.vim'
" }}}

" ===============            Syntax          ============== {{{
Dein 'lervag/vimtex', { 'on_ft': ['tex', 'bib'] }
Dein 'Chiel92/vim-autoformat'
Dein 'hynek/vim-python-pep8-indent', { 'on_ft': 'python' }
Dein 'jelera/vim-javascript-syntax', { 'on_ft': ['javascript', 'html', 'php']}
Dein 'pangloss/vim-javascript', { 'on_ft': ['javascript', 'html', 'php'] }
Dein 'ekalinin/Dockerfile.vim', { 'on_ft': 'Dockerfile' }
Dein 'othree/html5.vim', { 'on_ft': ['html', 'blade', 'php'] }
Dein 'stephpy/vim-php-cs-fixer', { 'on_ft': ['php'] }
Dein 'posva/vim-vue', { 'on_ft': 'vue'}
Dein 'xolox/vim-misc'
Dein 'xolox/vim-notes', { 'depends': 'vim-misc', 'on_ft': 'notes' }
Dein 'plasticboy/vim-markdown', { 'on_ft': 'markdown' }
Dein 'cespare/vim-toml', { 'on_ft': 'toml'}
Dein 'aklt/plantuml-syntax', { 'on_ft': 'uml'}
Dein 'Valloric/MatchTagAlways', { 'on_ft': ['html', 'xml', 'php', 'blade' ]}
Dein 'StanAngeloff/php.vim', { 'on_ft': ['php', 'html'] }
Dein 'jwalton512/vim-blade', { 'on_ft': 'blade' }
Dein 'evanmiller/nginx-vim-syntax'
Dein 'captbaritone/better-indent-support-for-php-with-html'
Dein 'nelsyeung/twig.vim'
"}}


" ===============            GIT          ============== {{{
Dein 'airblade/vim-gitgutter'
Dein 'tpope/vim-fugitive'
Dein 'rhysd/committia.vim'
"}}}

" }}}

" ===============        Color Schemes        ============== {{{
Dein 'morhetz/gruvbox'
"}}}

call dein#end()
call dein#call_hook('source')

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
set whichwrap+=<,>,h,l
set complete+=t,i
set complete-=k,kspell
set thesaurus+=~/.vim/spell/th_pt_BR.txt
set showmatch
set showmode
set smarttab
set nrformats-=octal
set shiftround
set path+=**
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
" set conceallevel=2 concealcursor=niv

" Novas janelas divididas sempre aparecem do lado direito ou embaixo
set splitright
set splitbelow

" Configurações da Busca
set incsearch
set hlsearch
set magic

" Configurações da commandline
set ruler
set wildmenu

" Não resetar o cursor para o inicio da linha
set nostartofline

" Ler arquivo automaticamente caso ele for modificado externalmente
set autoread

" Mudar versão do Regex para 0 (Automatico)
set regexpengine=0

" Realça linha atual
set cursorline

" Melhorar performance
set nocursorcolumn
syntax sync minlines=256
set synmaxcol=256
set lazyredraw
if !has('nvim')
  set ttyfast
endif

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
set completeopt=menu,menuone,longest
" S-k abre a ajuda para a palavra selecionada
set keywordprg=":help"

" Compartilhar Clipboard com o sistema
set clipboard=unnamedplus

" Desabilitar arquivos desnecessarios
set wildignore+=*.o,*.out,*.obj,.git,*.rbc,*.rbo,*.class,.svn,*.gem

" Ignorar Imagens e arquivos de Log
set wildignore+=*.gif,*.jpg,*.png

" Ignorar zip e irmãos
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz

" Ignorar algumas pastas
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,/lib/*,*/Vendor/*

" Tags
set tags=tags

" Session
set sessionoptions-=options
set sessionoptions-=help

if executable("rg")
    let g:ag_prg="rg --vimgrep --smart-case -F -U"
    let g:ackprg = 'rg --nogroup --nocolor --column -U'
    set grepprg=rg\ --vimgrep\ --no-heading
    set grepformat=%f:%l:%c:%m,%f:%l:%m
endif

set noshowmode

if exists('&inccommand')
  set inccommand=split
endif

" ABBREV
iabbrev dockerip 172.17.0.1
" }}}

" ================         Keybinds         ================ {{{

" Disable Ex Mode
nnoremap Q <nop>

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
nmap <leader>h :nohlsearch<CR>

noremap <F5> :VdebugStart<CR>

" Abreviações nos comandos
cnoreabbrev W w
cnoreabbrev Q q

" Quebrar linha em dois
nmap <leader>lb i<cr><esc>

" Mover pela janelas
" Tentar fazer uso adequado do nosso inimigo arrow keys
nnoremap <up>      :wincmd k<CR>
nnoremap <down>    :wincmd j<CR>
nnoremap <right>   :wincmd l<CR>
nnoremap <left>    :wincmd h<CR>
nnoremap <leader><left> :vertical resize -5<cr>
nnoremap <leader><down> :resize +5<cr>
nnoremap <leader><up> :resize -5<cr>
nnoremap <leader><right> :vertical resize +5<cr>

" Faz com que < e > continue com a seleção
vnoremap < <gv
vnoremap > >gv

" Mapeando jj para ESC
inoremap jk <ESC>

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

nnoremap <leader>how :AsyncRun howdoi -n 5
inoremap <C-X><C-S> <C-O>:Snippets<CR>

" Completar tags manualmente
inoremap <silent> <expr> <C-]> utils#manualTagComplete()

" Selecionar palavra sem pular
nnoremap * *``

augroup load_insert_plugin
  autocmd!
  autocmd InsertEnter * call StartInsertPlugins()
                     \| autocmd! load_insert_plugin
augroup END

" Visual AT
xnoremap @ :<C-u>call utils#ExecuteMacroOverVisualRange()<CR>

function! StartInsertPlugins() abort
endfunction

" }}}

" ================ Configuração dos Plugins ================ {{{

" Default
let g:loaded_2html_plugin      = 1 "$VIMRUNTIME/plugin/tohtml.vim
let g:loaded_getscript         = 1 "$VIMRUNTIME/autoload/getscript.vim
let g:loaded_getscriptPlugin   = 1 "$VIMRUNTIME/plugin/getscriptPlugin.vim
let g:loaded_gzip              = 1 "$VIMRUNTIME/plugin/gzip.vim
let g:loaded_logipat           = 1 "$VIMRUNTIME/plugin/logiPat.vim
let g:loaded_logiPat           = 1 "$VIMRUNTIME/plugin/logiPat.vim
let g:loaded_matchparen        = 1 "$VIMRUNTIME/plugin/matchparen.vim
let g:loaded_netrw             = 1 "$VIMRUNTIME/autoload/netrw.vim
let g:loaded_netrwFileHandlers = 1 "$VIMRUNTIME/autoload/netrwFileHandlers.vim
let g:loaded_netrwPlugin       = 1 "$VIMRUNTIME/plugin/netrwPlugin.vim
let g:loaded_netrwSettings     = 1 "$VIMRUNTIME/autoload/netrwSettings.vim
let g:loaded_rrhelper          = 1 "$VIMRUNTIME/plugin/rrhelper.vim
let g:loaded_spellfile_plugin  = 1 "$VIMRUNTIME/plugin/spellfile.vim
let g:loaded_sql_completion    = 1 "$VIMRUNTIME/autoload/sqlcomplete.vim
let g:loaded_syntax_completion = 1 "$VIMRUNTIME/autoload/syntaxcomplete.vim
let g:loaded_tar               = 1 "$VIMRUNTIME/autoload/tar.vim
let g:loaded_tarPlugin         = 1 "$VIMRUNTIME/plugin/tarPlugin.vim
let g:loaded_vimball           = 1 "$VIMRUNTIME/autoload/vimball.vim
let g:loaded_vimballPlugin     = 1 "$VIMRUNTIME/plugin/vimballPlugin.vim
let g:loaded_zip               = 1 "$VIMRUNTIME/autoload/zip.vim
let g:loaded_zipPlugin         = 1 "$VIMRUNTIME/plugin/zipPlugin.vim
let g:vimsyn_embed = 1 "$VIMRUNTIME/syntax/vim.vim

" vim-plug
let g:plug_timeout = 5000 "Necessário por causa das compilações

" vim-dein
let g:dein#enable_notification = 1
let g:dein#notification_time = 10
let g:dein#install_max_processes = 4
let g:dein#install_log_filename = '/home/rafael/dein.log'
let g:dein#types#git#pull_command = 'pull --ff --ff-only && git reflog expire --expire=now --all && git gc --prune=now --aggressive'

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
      \    "path_maps":          {"/var/www": "/home/rafael/Projetos/monografia-node.js/Projeto-Video-Interativo/www"},
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
let g:gutentags_project_info = []
let g:gutentags_define_advanced_commands = 1
let g:gutentags_project_root = ['.git', 'composer.json']
let g:gutentags_ctags_exclude = ['*.js', '*.html', '*.css', 'node_modules/*']
let g:gutentags_generate_on_write = 1
let g:gutentags_ctags_auto_set_tags = 0
let g:gutentags_generate_on_missing = 0
call add(g:gutentags_project_info, {'type': 'python', 'file': 'setup.py'})
call add(g:gutentags_project_info, {'type': 'ruby', 'file': 'Gemfile'})
call add(g:gutentags_project_info, {'type': 'php', 'file': 'composer.json'})

" Ale
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_enter = 0
let g:ale_fixers = {
      \   'sh': [
      \       'shfmt',
      \   ],
      \}

" Neomake
" autocmd! BufWritePost * Neomake
" let g:neomake_php_jshint_maker = {
"       \ 'exe': 'jshint',
"       \ 'args': ['--verbose', '--extract=always'],
"       \ 'errorformat': '%A%f: line %l\, col %v\, %m \(%t%*\d\)',
"       \ }
"
" let g:neomake_php_tidy_maker = {
"       \ 'exe': 'tidy',
"       \ 'args': ['-e', '-q', '--gnu-emacs', 'true', '--doctype', 'omit'],
"       \ 'errorformat': '%A%f:%l:%c: Warning: %m',
"       \ }
"
" let g:neomake_blade_tidy_maker = {
"       \ 'exe': 'tidy',
"       \ 'args': ['-e', '-q', '--gnu-emacs', 'true'],
"       \ 'errorformat': '%A%f:%l:%c: Warning: %m',
"       \ }
" let g:neomake_blade_enabled_makers      = ['tidy']
" let g:neomake_verbose                 = 0
" let g:neomake_php_phpcs_args_standard = 'PSR2'
" let g:neomake_php_enabled_makers      = ['php']
" " let g:neomake_verbose = 3
" " let g:neomake_logfile = 'neomake.log'

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
imap <C-j>     <Plug>(neosnippet_expand_or_jump)
smap <C-j>     <Plug>(neosnippet_expand_or_jump)
xmap <C-j>     <Plug>(neosnippet_expand_target)

let g:neosnippet#enable_snipmate_compatibility = 1
let g:neosnippet#snippets_directory='~/.vim/snippets/'
let g:neosnippet#enable_auto_clear_markers = 1
" let g:neosnippet#enable_conceal_markers = 0

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
      \   'mode': 'LightLineMode',
      \   'fugitive': 'LightLineFugitive',
      \   'tagbar': 'TagBarCurrentTag',
      \   'gutentags': '%{gutentags#statusline("[Generating...]")}'
      \ },
      \ 'separator': { 'left': '', 'right': '' },
      \ 'subseparator': { 'left': '', 'right': '' }
      \ }

function! LightLineMode()
  let fname = expand('%:t')
  return fname == '__Tagbar__' ? 'Tagbar' :
        \ fname == 'ControlP' ? 'CtrlP' :
        \ fname == '__Gundo__' ? 'Gundo' :
        \ fname == '__Gundo_Preview__' ? 'Gundo Preview' :
        \ fname =~ 'NERD_tree' ? 'NERDTree' :
        \ &ft == 'unite' ? 'Unite' :
        \ &ft == 'vimfiler' ? 'VimFiler' :
        \ &ft == 'vimshell' ? 'VimShell' :
        \ winwidth(0) > 60 ? lightline#mode() : ''
endfunction

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
let s:tagbar_need_update = 1
function! GetTagbarCurrentTag(timer)
  if s:tagbar_need_update == 1
      let s:tagbar_last_lookup_val = tagbar#currenttag('%s ', '')
  endif
endfunction

function! TagBarCurrentTag()
  if !exists('s:tagbar_lookup_timer')
    let s:tagbar_lookup_timer = timer_start(1000, 'GetTagbarCurrentTag', {'repeat': -1})
  endif
  return s:tagbar_last_lookup_val
endfunction

au CursorMoved * let s:tagbar_need_update = 1
au CursorHold * let s:tagbar_need_update = 0

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
  let g:deoplete#file#enable_buffer_path = 1
  " let g:deoplete#enable_refresh_always = 1
  let g:deoplete#delimiters = ['/', '.', '::', ':', '#']
  let g:deoplete#sources={}

  call deoplete#custom#set('_', 'matchers', ['matcher_full_fuzzy'])
  call deoplete#custom#set('_', 'converters',
        \ ['converter_remove_paren', 'converter_auto_delimiter', 'converter_remove_overlap', 'converter_truncate_abbr', 'converter_truncate_menu'])
  let g:deoplete#omni_patterns = get(g:,'deoplete#omni_patters',{})
    let g:deoplete#keyword_patterns = {}

    let g:deoplete#omni_patterns.cpp = '[^. *\t]\.\w*|[^. *\t]\::\w*|[^. *\t]\->\w*|#include\s*[<"][^>"]*'
    let g:deoplete#omni#input_patterns={}
    let g:deoplete#omni#input_patterns.cpp = ['[^. *\t]\.\w*','[^. *\t]\::\w*','[^. *\t]\->\w*','#include\s*[<"][^>"]*']
    let g:neoinclude#exts          = {'php': ['php', 'inc', 'tpl', 'blade.php']}
    let g:neoinclude#max_processes = 5
    let g:deoplete#ignore_sources = get(g:, 'deoplete#ignore_sources', {})
    let g:deoplete#ignore_sources.php = ['omni']

    " call deoplete#util#set_pattern(
    "       \ g:deoplete#omni#input_patterns,
    "       \ 'php', [g:deoplete#keyword_patterns.php])

    " let g:deoplete#enable_profile = 1
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
autocmd FileType xml           setlocal omnifunc=xmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=tern#Complete
autocmd FileType vim setlocal omnifunc=syntaxcomplete#Complete
autocmd FileType vim setlocal foldenable

" Easy EasyAlign
vmap <leader>a <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

" Vim Grepper
let g:grepper = {
      \ 'tools': ['rgnew'],
      \ 'rgnew': {
      \   'grepprg':    'rg --vimgrep -F --no-heading',
      \ }}

nnoremap <leader>fi :Grepper -tool rgnew  -open -switch -highlight<cr>

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

" Netrw
let g:netrw_liststyle = 3
let g:netrw_write_AsyncRun = 1

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

" Gruvbox
let g:gruvbox_italic        = 0
let g:gruvbox_bold          = 1
let g:gruvbox_contrast_dark = 'medium'
let g:gruvbox_invert_selection = 0

" PHP Complete
let g:phpcomplete_cache_taglists = 1
let g:phpcomplete_parse_docblock_comments = 1

" Php Refactoring
let g:vim_php_refactoring_use_default_mapping = 0
let g:vim_php_refactoring_phpdoc = 'pdv#DocumentWithSnip'
let g:pdv_template_dir = $HOME ."/.vim/plugged/pdv/templates_snip"

" Tagbar PHP
let g:tagbar_phpctags_bin='/opt/scripts/phpctags'

" Startify
let g:startify_custom_header = []
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

" Togglecursor
let g:togglecursor_default = 'block'
let g:togglecursor_insert = 'line'

" Vim-Over
nnoremap <C-F> :OverCommandLine %s/<CR>
vnoremap <C-F> :'<,'>OverCommandLine s/<CR>
nmap <leader>sw :OverCommandLine %s/\(<c-r>=expand("<cword>")<cr>\)/<CR>/g<left><left>

" Ferret
let g:FerretDispatch = 0
let g:FerretQFMap = 1

" Vim Highlight Yank
if !has('nvim')
  map y <Plug>(highlightedyank)
endif

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

" EditorConfig
let g:EditorConfig_core_mode = 'external_command'

" Local Vim RC
let g:localvimrc_sandbox = 0
let g:localvimrc_ask = '0'

" Gitgutter
let g:gitgutter_realtime = 0
let g:gitgutter_eager = 0

" ZeaVim
let g:zv_file_types = {
      \   'css'                      : 'css,foundation,bootstrap_4',
      \   '.htaccess'                : 'apache_http_server',
      \   '\v^(G|g)runt\.'           : 'gulp,javascript,nodejs',
      \   '\v^(G|g)ulpfile\.'        : 'grunt',
      \   '\v^(md|mdown|mkd|mkdn)$'  : 'markdown',
      \   'php'                      : 'laravel',
      \   '.blade.php'               : 'laravel',
      \ }

" AsyncRun
let g:asyncrun_exit = "silent doautocmd QuickFixCmdPost make"

" MiniYank
map p <Plug>(miniyank-autoput)
map P <Plug>(miniyank-autoPut)
map <leader>c <Plug>(miniyank-cycle)

" }}}

" ================       Auto Grupos        ================ {{{

augroup OpenQuickfixWindowAfterMake
    autocmd QuickFixCmdPost [^l]* nested cwindow
    autocmd QuickFixCmdPost    l* nested lwindow
augroup END

augroup configgroup
  autocmd!

  " au FileType markdown,mkd UltiSnipsAddFiletypes markdown

  au BufNewFile,BufRead *.ctp set filetype=php
  au BufNewFile,BufRead *.ctp let b:neomake_php_enabled_makers = ['php', 'jshint', 'tidy']

  au BufNewFile,BufRead *.blade.php set filetype=blade
  au BufNewFile,BufRead *.note set filetype=notes

augroup END


augroup pencil
  autocmd!
  autocmd FileType markdown,mkd
        \ | setl spelllang=pt,en_us fdl=4 noru nonu nornu
        \ | setl fdo+=search

  autocmd Filetype mail
        \ | setl spelllang=pt,en_us et sw=2 ts=2 noai nonu nornu
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
au WinEnter,BufEnter * if &filetype == "qf" | call utils#AdjustWindowHeight(3, 10)

" Salvar quando sair do insert mode, usando delay com timer_start
au InsertLeave * nested call timer_start(250, 'SaveFile', {'repeat': 1})

function! SaveFile(timer) abort
  " Não tenta salvar caso esteja no modo expand do neosnippet
  if !neosnippet#expandable_or_jumpable()
    call utils#AutoSave()
  endif
endfunction

" }}}

" ================   Configurações Extras   ================ {{{

" Tig
command! Tig :AsyncRun tig
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

function! Set( optionName )
  set verbose=1
  execute 'set ' . a:optionName . '?'
  set verbose=0
endfunction
com! -nargs=1 Set call Set( <q-args> )

command! NeoSnippetsList call fzf#run({
  \ 'source':  g:utils#GetSnippets(),
  \ 'down':    '40%',
  \ 'sink':    function('s:snippets_sink')})

imap <f7> <C-o>:NeoSnippetsList<cr>

" }}}

" ================        Arco-Iris         ================ {{{

set background=dark

if has('nvim')
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

colorscheme gruvbox

map  <silent> <F4> :call gruvbox#hls_toggle()<CR>
imap <silent> <F4> <ESC>:call gruvbox#hls_toggle()<CR>a
vmap <silent> <F4> <ESC>:call gruvbox#hls_toggle()<CR>gv

nnoremap <silent> <CR> :call gruvbox#hls_hide()<CR><CR>

" Cor de palavras erradas
hi SpellBad cterm=underline ctermfg=red
hi SpellBad gui=undercurl guisp=red guifg=red

hi StartifyHeader ctermfg=40 guifg=40

" MATCH YIELD LARAVEL
" let t=[] | %s/\v\@yield\(\'\zs.*\w/\=add(t,submatch(0))[-1]/g:
"
