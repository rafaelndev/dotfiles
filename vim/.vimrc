" vim:fdm=marker
set nocompatible

if has('nvim')
  set  termguicolors
endif

" ================         Plugins          ================ {{{
command! -nargs=* DeferPlug call g:utils#DeferPluginLoad(<args>)
call plug#begin('~/.vim/plugged')
" ===============          Geral            ================ {{{
Plug 'tpope/vim-dispatch'
Plug 'skywind3000/asyncrun.vim'
Plug 'w0rp/ale', { 'on_event': 'BufWritePre'}
Plug 'majutsushi/tagbar'
DeferPlug 'itchyny/lightline.vim'
Plug 'scrooloose/nerdtree' , { 'on':  [ 'NERDTreeToggle', 'NERDTreeFind' ] }
Plug 'Konfekt/FastFold'
Plug 'ludovicchabant/vim-gutentags', { 'on_event': 'BufWritePre'}
Plug 'shime/vim-livedown'
Plug 'dhruvasagar/vim-table-mode'
Plug 'machakann/vim-highlightedyank'
Plug 'mhinz/vim-grepper'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'build': './install --all', 'merged': 0 }
Plug 'junegunn/fzf.vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'jszakmeister/vim-togglecursor'
Plug 'ryanoasis/vim-devicons', { 'on': [ 'NERDTreeToggle', 'NERDTreeFind'], 'rtp': ''}
Plug 'wincent/ferret'
Plug 'mhinz/vim-startify'
Plug 'osyo-manga/vim-over'
Plug 'pgdouyon/vim-evanesco'
Plug 'equalsraf/neovim-gui-shim'
Plug 'lambdalisue/suda.vim'
" Plug 'svermeulen/vim-cutlass'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'terryma/vim-multiple-cursors'
Plug 'stefandtw/quickfix-reflector.vim'
Plug 'mhinz/vim-signify'
" }}}

" ===============  Manipulação de Texto/Objetos  ============= {{{
Plug 'kana/vim-operator-user'
DeferPlug 'wellle/targets.vim'
" Plug 'machakann/vim-sandwich'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'junegunn/vim-easy-align'
Plug 'tomtom/tcomment_vim'
Plug 'vim-scripts/ReplaceWithRegister'
" function! LeximaStart() abort
"   call lexima#init()
"   inoremap <expr> <CR> pumvisible() ? "\<C-Y>" : lexima#expand('<LT>CR>', 'i')
"   call lexima#add_rule({'char': '}', 'at': '\%#\n\s*}', 'leave': '}'})
"   call lexima#add_rule({'char': ']', 'at': '\%#\n\s*]', 'leave': ']'})
"   call lexima#add_rule({'char': ')', 'at': '\%#\n\s*)', 'leave': ')'})
"   call lexima#add_rule({'char': '<?php', 'at': '\%#\n\s*)', 'leave': '?>'})
" endfunction
" Plug 'cohama/lexima.vim', {
"       \ 'lazy': 1,
"       \ 'on_event': 'InsertCharPre'
"       \ 'do': function('LeximaStart')
"       \ }
Plug 'Raimondi/delimitMate'
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-function', { 'build': 'mkdir ./after/ftplugin/php; cp ./after/ftplugin/java/textobj-function.vim ./after/ftplugin/php/'}
Plug 'thinca/vim-textobj-function-javascript'
Plug 'kana/vim-textobj-line'
Plug 'rbonvall/vim-textobj-latex'
Plug 'saaguero/vim-textobj-pastedtext'
Plug 'matze/vim-move'
" }}}
" ===============          Completion          ============== {{{
" Plug 'ncm2/ncm2'
" Plug 'roxma/nvim-yarp'
" Plug 'ncm2/ncm2-bufword'
" Plug 'ncm2/ncm2-tmux'
" Plug 'ncm2/ncm2-path'
" Plug 'ncm2/ncm2-ultisnips'
" Plug 'ncm2/ncm2-jedi'
" Plug 'ncm2/float-preview.nvim'
" Plug 'ObserverOfTime/ncm2-jc2', {'for': ['java', 'jsp']}
" Plug 'artur-shaik/vim-javacomplete2', {'for': ['java', 'jsp']}
Plug 'neoclide/coc.nvim', {'tag': '*', 'do': { -> coc#util#install()}}
Plug 'neoclide/coc-sources'
Plug 'neoclide/coc-pyls'
Plug 'neoclide/coc-java'
Plug 'neoclide/coc-snippets'
" }}}

" ===============            Syntax          ============== {{{
Plug 'Chiel92/vim-autoformat'
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
"}}

" ===============        Color Schemes        ============== {{{
Plug 'morhetz/gruvbox'
"}}}

call plug#end()
" runtime ~/.vim/plugged/vim-sandwich/macros/sandwich/keymap/surround.vim

" }}}
"
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
set showmatch
set showmode
set smarttab
set nrformats-=octal
set shiftround
set path+=**
set title
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
set updatetime=400
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
" set completeopt=menu,menuone,longest
" set completeopt=noinsert,menu,menuone,noselect
set completeopt=noinsert,menuone,noselect
set pumheight=20

" S-k abre a ajuda para a palavra selecionada
set keywordprg=":help"

" Compartilhar Clipboard com o sistema
set clipboard=unnamedplus

" Desabilitar arquivos desnecessarios
set wildignore+=*.o,*.out,*.obj,.git,*.rbc,*.rbo,*.class,.svn,*.gem

" Ignorar Imagens e arquivos de Log
set wildignore+=*.gif,*.jpg,*.png

" Ignorar zip e irmãos
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz,tags

" Ignorar algumas pastas
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,/lib/*,*/Vendor/*

" Tags
set tags=tags

" Session
set sessionoptions-=options
set sessionoptions-=help

" Keyword
set iskeyword+=-

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
iabbrev sqlid -- $Id$

" GoNvim
let g:gonvim_draw_statusline = 0
let g:gonvim_draw_tabline = 0
let g:gonvim_start_fullscreen = 0

" DelimitMate
let delimitMate_expand_cr = 1
let delimitMate_jump_expansion = 1
let delimitMate_balance_matchpairs = 1
let delimitMate_expand_space = 1
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
"cmap w!! w !sudo tee % <CR>
cmap w!! w suda://%<CR>

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

" Completar tags manualmente
inoremap <silent> <expr> <C-]> utils#manualTagComplete()

" Selecionar palavra sem pular
nnoremap * *``

" augroup load_insert_plugin
"   autocmd!
"   autocmd InsertEnter * call StartInsertPlugins()
"                      \| autocmd! load_insert_plugin
" augroup END

" Visual AT
xnoremap @ :<C-u>call utils#ExecuteMacroOverVisualRange()<CR>

" function! StartInsertPlugins() abort
" endfunction

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

" Lexima
let g:lexima_enable_space_rules = 0

" Vim-Markdown
let g:vim_markdown_folding_disabled = 1

" Table-Mode
let g:table_mode_corner="|"

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
xmap ] S]
xmap { S{
xmap } S}
xmap ( S(
xmap ) S)

" Polyglot
let g:polyglot_disabled = ['latex', 'dockerfile', 'git', 'gitcommit', 'javascript', 'markdown']

" Vim-Javascript
let javascript_enable_domhtmlcss = 1
let b:javascript_fold            = 0

" Vim Javascript Libraries
let g:used_javascript_libs = 'underscore,jquery,requirejs'

" VimTex
"let g:vimtex_latexmk_continuous           = 1
"let g:vimtex_view_method                  = 'zathura'
"let g:vimtex_fold_enabled                 = 0
"let g:vimtex_latexmk_background           = 1
"let g:vimtex_quickfix_ignore_all_warnings = 1
"let g:vimtex_quickfix_open_on_warning     = 1
"let g:vimtex_latexmk_progname             = 'nvr'
"let g:vimtex_quickfix_autojump = 0
"let g:vimtex_quickfix_mode = 0

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

" UtiSnips
" inoremap <silent> <expr> <CR> ncm2_ultisnips#expand_or("\<CR>", 'n')

" c-j c-k for moving in snippet
let g:UltiSnipsExpandTrigger		= "<c-j>"
let g:UltiSnipsJumpForwardTrigger	= "<c-j>"
let g:UltiSnipsJumpBackwardTrigger	= "<c-k>"
let g:UltiSnipsListSnippets="<c-l>"
let g:UltiSnipsRemoveSelectModeMappings = 0

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
  return ''
endfunction


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

let s:fugitive_head_timer = timer_start(10000, 'GetFugitiveHead', {'repeat': -1})

" Lightline
let g:lightline = {
    \ 'colorscheme': 'wombat',
    \ 'active': {
    \   'left': [ [ 'mode', 'paste' ],
    \             [  'readonly', 'filename', 'modified', ] ],
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
    \   'tagbar': 'TagBarCurrentTag'
    \ },
    \ 'separator': { 'left': '', 'right': '' },
    \ 'subseparator': { 'left': '', 'right': '' }
    \ }


let s:tagbar_last_lookup_val = ''
let s:tagbar_need_update = 0
function! GetTagbarCurrentTag(timer)
if s:tagbar_need_update == 1

  " Só procura tags em arquivos com menos de 20000 linhas
  if line('$') < 20000
    let s:tagbar_last_lookup_val = tagbar#currenttag('%s ', '')

  endif
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

inoremap <expr> <CR> (pumvisible() ? "\<c-y>\<cr>" : "\<CR>")

" Use <TAB> to select the popup menu:

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
" inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<C-R>=UltiSnips#ExpandSnippet()"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Enable omni completion.
autocmd FileType css           setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType xml           setlocal omnifunc=xmlcomplete#CompleteTags
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

nnoremap <leader>a :Grepper -tool rgnew  -open -switch -highlight<cr>

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

if exists('g:GuiLoaded')
  Guifont Consolas:h9
endif

" Configurações do GVIM
if has('gui_running')

  set guioptions-=m  "remove menu bar
  set guioptions-=T  "remove toolbar
  set guioptions-=r  "remove right-hand scroll bar
  set guicursor+=a:blinkon0
  set guiheadroom=0
else
  set guioptions=M
endif


" Gruvbox
let g:gruvbox_italic        = 1
let g:gruvbox_bold          = 1
let g:gruvbox_contrast_dark = 'medium'
let g:gruvbox_invert_selection = 0

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

" Vim-Sneak
let g:sneak#use_ic_scs = 1

" AsyncRun
let g:asyncrun_exit = "silent doautocmd QuickFixCmdPost make"

" Coc-Nvim

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if &filetype == 'vim'
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

function IsComment()
    let hg = join(map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")'))
    return hg =~? 'comment' ? 1 : 0
endfunction

function! HoverFunction() abort
let cInd = strridx(getline('.'), expand("<cword>"), col('.') - 1)
let isOnKeyword = (cInd >= 0 && (cInd + strlen(expand("<cword>"))) >= (col('.') - 1))
if isOnKeyword == 1 && !IsComment()
  silent! call CocActionAsync('doHover')
endif
endfunction

autocmd CursorHold * silent call CocActionAsync('highlight')
autocmd CursorHold * silent! call HoverFunction()<CR>


" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Remap for format selected region
vmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')

" Fix autofix problem of current line
nmap <leader>qf  <Plug>(coc-fix-current)

function! Multiple_cursors_before()
    " call ncm2#lock('vim-multiple-cursors')
endfunction

function! Multiple_cursors_after()
    " call ncm2#unlock('vim-multiple-cursors')
endfunction


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

" autocmd BufEnter * call StartNCM()
" autocmd InsertCharPre * call StartNCM()

function! StartNCM() abort
  let g:bufentered = 1
  call ncm2#enable_for_buffer()
endfunction

" Salvar quando sair do insert mode, usando delay com timer_start
au InsertLeave * nested call timer_start(250, 'SaveFile', {'repeat': 1})

function! SaveFile(timer) abort
  let g:insertleave = 1
  " Não tenta salvar caso esteja no modo expand do neosnippet
  " if !neosnippet#expandable_or_jumpable()
  "   call utils#AutoSave()
  " endif
endfunction

" Formatar tabela do markdown
au FileType markdown vmap <Leader><Bar> :EasyAlign*<Bar><Enter>

augroup DeferredLoadOnIdle
    au!
    autocmd CursorHold,CursorHoldI * call plug#load(g:deferredPlugins)
                \ | echom "deferred load completed for ". len(g:deferredPlugins) . " plugins"
                \ | autocmd! DeferredLoadOnIdle
augroup END

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
