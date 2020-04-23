if has('nvim')
  set termguicolors
endif

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
set updatetime=750
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
"inoremap <silent> <expr> <C-]> utils#manualTagComplete()

" Selecionar palavra sem pular
nnoremap * *``

"augroup load_insert_plugin
"  autocmd!
"  autocmd InsertEnter * call StartInsertPlugins()
"                     \| autocmd! load_insert_plugin
"augroup END

" Visual AT
"xnoremap @ :<C-u>call utils#ExecuteMacroOverVisualRange()<CR>

"function! StartInsertPlugins() abort
"endfunction

" ================        Arco-Iris         ================ {{{

set background=dark

if has('nvim')
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

"colorscheme gruvbox
