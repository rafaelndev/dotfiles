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
" if !has('nvim')
" set encoding=utf-8 nobomb
" endif
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
set conceallevel=2 concealcursor=nv

" Novas janelas divididas sempre aparecem do lado direito ou embaixo
set splitright
set splitbelow

" ConfiguraÃ§Ãµes da Busca
set incsearch
set hlsearch
set magic

" ConfiguraÃ§Ãµes da commandline
set ruler
set wildmenu

" NÃ£o resetar o cursor para o inicio da linha
set nostartofline

" Ler arquivo automaticamente caso ele for modificado externalmente
set autoread

" Mudar versÃ£o do Regex para 0 (Automatico)
set regexpengine=0

" RealÃ§a linha atual
set cursorline

" Melhorar performance
set nocursorcolumn
syntax sync minlines=256
set synmaxcol=256
set lazyredraw
if !has('nvim')
set ttyfast
endif

" DefiniÃ§Ãµes padrÃµes de identaÃ§Ã£o
set tabstop=2 shiftwidth=2 expandtab
set listchars=tab:▒░,trail:▓
set listchars-=eol

" Mostrar espaÃ§os em branco
set list

set number
set ignorecase
set smartcase

" Ativar o mouse, just for fun.
if has('mouse')
set mouse=a
endif

" ForÃ§a os buffers a ficarem escondidos (hidden)
set hidden

" NÃ£o salvar arquivos de backup
set nobackup
set nowritebackup
set noswapfile
set fileformats=unix,dos,mac

" ConfiguraÃ§Ã£o de auto completar para funcionar com o YCM
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

" Ignorar zip e irmÃ£os
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz,tags

" Ignorar algumas pastas
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,/lib/*,*/Vendor/*,*CVS*

" Tags
set tags=tags

" Session
set sessionoptions-=options
set sessionoptions-=help

" Keyword
set iskeyword+=-

if executable("rg")
  let g:ag_prg="rg -i --vimgrep --smart-case -F -U"
  let g:ackprg = 'rg -i --nogroup --nocolor --column -U'
  set grepprg=rg\ --vimgrep\ --no-heading\ -i
  set grepformat=%f:%l:%c:%m,%f:%l:%m
endif

set noshowmode

if exists('&inccommand')
set inccommand=split
endif

" ABBREV
iabbrev sqlid -- $Id$

let g:python_host_skip_check = 1
let g:python3_host_skip_check = 1

cnoremap <silent> <leader>q<CR>  :call ils#ConfirmQuit(0)<CR>

" Text Object para indentaÃ§Ã£o
onoremap <silent>ai :<C-U>call utils#IndTxtObj(0)<CR>
onoremap <silent>ii :<C-U>call utils#IndTxtObj(1)<CR>
vnoremap <silent>ai :<C-U>call utils#IndTxtObj(0)<CR><Esc>gv
vnoremap <silent>ii :<C-U>call utils#IndTxtObj(1)<CR><Esc>gv

" Abrir a configuraÃ§Ã£o
command! Config call utils#config()

command! -nargs=0 -bar Qargs execute 'args ' . utils#QuickfixFilenames()

command! FindSqlFiles silent! call utils#FindSqlFiles()

" Profile
command! Profile call utils#profile()<CR>

function! Set( optionName )
  set verbose=1
  execute 'set ' . a:optionName . '?'
  set verbose=0
endfunction
com! -nargs=1 Set call Set( <q-args> )

command! ReplacePLSQLChar call ReplacePLSQLChar()<CR>

function! ReplacePLSQLChar()
    " Save cursor position
    let l:save = winsaveview()
    " Remove trailing whitespace
    %s/¿\|á\|¿\|à\|¿\|é\|¿\|è\|¿\|í\|¿\|ì\|¿\|ó\|¿\|ò\|¿\|ú\|¿\|ù\|¿\|¿\|¿\|¿\|¿\|Á\|¿\|À\|¿\|É\|¿\|È\|¿\|Í\|¿\|Ì\|¿\|Ó\|¿\|Ò\|¿\|Ú\|¿\|Ù\|¿\|¿\|¿\|¿\|ç\|õ\|Ç/\='''|| CHR('.char2nr(submatch('0')).') ||'''/g
    " Move cursor to original position
    call winrestview(l:save)
    echo "Corrigido characters ascii."
endfunction

" let $FZF_DEFAULT_COMMAND =  "find * -path '*/\.*' -prune -o -path 'node_modules/**' -prune -o -path 'target/**' -prune -o -path 'dist/**' -prune -o  -type f -print -o -type l -print 2> /dev/null"
" let $FZF_DEFAULT_OPTS=' --layout=reverse  --margin=1,1'
let $FZF_DEFAULT_OPTS='-i --color=dark --color=fg:15,bg:-1,hl:1,fg+:#ffffff,bg+:0,hl+:1 --color=info:0,prompt:0,pointer:12,marker:4,spinner:11,header:-1 --layout=reverse --margin=1,1'
let g:fzf_layout = { 'window': 'call FloatingFZF()' }

" Function to create the custom floating window
function! FloatingFZF()
  " creates a scratch, unlisted, new, empty, unnamed buffer
  " to be used in the floating window
  let buf = nvim_create_buf(v:false, v:true)

  let height = float2nr(&lines * 0.4)
  let width = float2nr(&columns * 0.6)
  let horizontal = float2nr((&columns - width) / 2)
  let vertical = 1

  let opts = {
        \ 'relative': 'editor',
        \ 'row': vertical,
        \ 'col': horizontal,
        \ 'width': width,
        \ 'height': height
        \ }

  " open the new window, floating, and enter to it
  call nvim_open_win(buf, v:true, opts)
       setlocal
             \ buftype=nofile
             \ nobuflisted
             \ bufhidden=hide
             \ nonumber
             \ norelativenumber
             \ signcolumn=no
endfunction

" call lightline#update()

function! ReplaceNumberRN()
let i=1 | g/number="\d\+"/s//\='number="'.i.'"'/ | let i=i+1
endfunction

command! ReplaceNumberRN call ReplaceNumberRN()<CR>

" }}}
