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

" Ale
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_enter = 0
let g:ale_fixers = {
    \   'sh': [
    \       'shfmt',
    \   ],
    \}

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

" vim-plug
let g:plug_timeout = 5000 "Necessário por causa das compilações

" Polyglot
let g:polyglot_disabled = ['dockerfile', 'latex', 'git', 'gitcommit', 'javascript', 'markdown']

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

" Table-Mode
let g:table_mode_corner="|"

" Vim-Markdown
let g:vim_markdown_folding_disabled = 1

" Vim-Javascript
let javascript_enable_domhtmlcss = 1
let b:javascript_fold            = 0

" Vim Javascript Libraries
let g:used_javascript_libs = 'underscore,jquery,requirejs'

"FZF
nnoremap <leader>@ :BTags<CR>
nnoremap <leader>b :Buffers<CR>
nnoremap <C-p> :FZF<CR>

" c-j c-k for moving in snippet
" let g:UltiSnipsExpandTrigger		= "<c-j>"
" let g:UltiSnipsJumpForwardTrigger	= "<c-j>"
" let g:UltiSnipsJumpBackwardTrigger	= "<c-k>"
" let g:UltiSnipsListSnippets="<c-l>"
let g:UltiSnipsRemoveSelectModeMappings = 0

imap <C-j> <Plug>(coc-snippets-expand)
vmap <C-j> <Plug>(coc-snippets-select)
let g:coc_snippet_next = '<c-j>'
let g:coc_snippet_prev = '<c-k>'
imap <C-j> <Plug>(coc-snippets-expand-jump)

nmap ge :CocCommand explorer --sources=buffer+,file+ <cr>

let s:fugitive_head = ''
function! GetFugitiveHead(timer)
if exists('*fugitive#head')
  let _ = fugitive#head()
  let s:fugitive_head = strlen(_) ? 'î  '._ : ''
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
    \             [  'readonly', 'filename', 'modified', 'cocnvim'] ],
    \   'right': [ [ 'lineinfo' ],
    \              [ 'percent' ],
    \              [ 'tagbar', 'fileformat', 'fileencoding', 'bomb', 'filetype'] ],
    \ },
    \ 'component': {
    \   'lineinfo': '%l\%L [%p%%], %c, %n',
    \   'readonly': '%{&readonly?"\ue0a2":""}',
    \   'bomb': '%{&bomb?"BOM":""}',
    \   'cocnvim': '%{coc#status()}'
    \ },
    \ 'component_function': {
    \   'mode': 'LightLineMode',
    \   'fugitive': 'LightLineFugitive',
    \   'tagbar': 'TagBarCurrentTag',
    \   'currentfunction': 'CocCurrentFunction'
    \ },
    \ 'component_visible_condition': {
    \   'bomb': '&bomb',
    \ },
    \ 'separator': { 'left': '', 'right': '' },
    \ 'subseparator': { 'left': '', 'right': '' }
    \ }

function! CocCurrentFunction()
    return 'C' . get(b:, 'coc_current_function', '')
endfunction

let s:tagbar_last_lookup_val = ''
let s:tagbar_need_update = 0

function! GetTagbarCurrentTag(timer)
if s:tagbar_need_update == 1

  " Não procura tags em arquivos com menos de 20000 linhas
  if line('$') < 100000
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

" inoremap <expr> <CR> (pumvisible() ? "\<c-y>\<cr>" : "\<CR>")

" Use <TAB> to select the popup menu:
" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : \"\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

inoremap <silent><expr> <TAB>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_snippet_next = '<tab>'

inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<C-R>=UltiSnips#ExpandSnippet()"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <silent><expr> <c-space> coc#refresh()


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
      \   'grepprg':    'rg -i --vimgrep --no-heading',
      \ }}

nnoremap <leader>a :Grepper -tool rgnew -open -switch -highlight<cr>

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


" ConfiguraÃ§Ãµes do GVIM
" set guifont=mononoki:h14
if has('gui_running')
  set guioptions-=m  "remove menu bar
  set guioptions-=T  "remove toolbar
  set guioptions-=r  "remove right-hand scroll bar
  set guicursor+=a:blinkon0
  set guiheadroom=0
else
  set guioptions=M
endif
set guicursor+=a:blinkon0

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
      \ ['   SessÃµes:'],
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

" Ferret
let g:FerretDispatch = 0
let g:FerretQFMap = 1

" Vim Highlight Yank
if !has('nvim')
  map y <Plug>(highlightedyank)
endif

" Tcomment
let g:tcomment_mapleader_uncomment_anyway = ''
let g:tcomment_mapleader_comment_anyway = ''

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

nmap <silent> <leader>gd <Plug>(coc-definition)
nmap <silent> <leader>gy <Plug>(coc-type-definition)
nmap <silent> <leader>gi <Plug>(coc-implementation)
nmap <silent> <leader>gr <Plug>(coc-references)
nmap <silent> <leader>jd <Plug>(coc-definition)
nmap <silent> <leader>gl <Plug>(coc-codelens-action)
" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)
" Remap for format selected region
vmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)
" Fix autofix problem of current line
nmap <leader>qf  <Plug>(coc-fix-current)
" nmap <leader>qf  :call CocAction('doQuickFix')<CR>

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
  try
    let cInd = strridx(getline('.'), expand("<cword>"), col('.') - 1)
    let isOnKeyword = (cInd >= 0 && (cInd + strlen(expand("<cword>"))) >= (col('.') - 1))
    if isOnKeyword == 1 && !IsComment() && !coc#util#has_float() && exists('g:did_coc_loaded')
      silent! call CocActionAsync('doHover')
    endif
  catch
  endtry
endfunction

autocmd CursorHold * silent! call HoverFunction()<CR>
autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')

" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')


function! Multiple_cursors_before()
    " call ncm2#lock('vim-multiple-cursors')
endfunction

function! Multiple_cursors_after()
    " call ncm2#unlock('vim-multiple-cursors')
endfunction

" vim-go
let g:go_fmt_command = "goimports"

" matchit
" if exists("loaded_matchit")
"   let b:match_ignorecase=0
"   let b:match_words=
"     \ '\<begin\>:\<end\>,' .
"     \ '\<case\>\|\<casex\>\|\<casez\>:\<endcase\>,' .
"     \ '\<module\>:\<endmodule\>,' .
"     \ '\<if\>:\<else\>,' .
"     \ '\<if\>:\<end if\>,' .
"     \ '\<function\>:\<endfunction\>,' .
"     \ '`ifdef\>:`else\>:`endif\>,' .
"     \ '\<task\>:\<endtask\>,' .
"     \ '\<specify\>:\<endspecify\>'
" endif

" context.vim
let g:context_enabled = 0

" lens.vim
let g:lens#disabled_filetypes = ['nerdtree', 'fzf']
