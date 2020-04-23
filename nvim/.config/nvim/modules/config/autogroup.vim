" Auto Groups

augroup OpenQuickfixWindowAfterMake
    autocmd QuickFixCmdPost [^l]* nested cwindow
    autocmd QuickFixCmdPost    l* nested lwindow
augroup END

" Voltar para posiÃ§Ã£o anterior
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

autocmd CursorHold,CursorHoldI * call lightline#update()
" autocmd InsertCharPre * call StartNCM()

function! StartNCM() abort
  let g:bufentered = 1
  call ncm2#enable_for_buffer()
endfunction

" Salvar quando sair do insert mode, usando delay com timer_start
au InsertLeave * nested call timer_start(250, 'SaveFile', {'repeat': 1})

function! SaveFile(timer) abort
  let g:insertleave = 1
  " NÃ£o tenta salvar caso esteja no modo expand do neosnippet
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

" Vista-vim
let g:vista#renderer#ctags = 'kind'


" }}}
