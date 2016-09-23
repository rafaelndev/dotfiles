" Função para confirmar a saida do vim
function! g:utils#ConfirmQuit(writeFile) abort
  if (a:writeFile)
    if (expand('%:t')==#'')
      echo 'Não é possivel salvar um arquivo sem nome.'
      return
    endif
    :write
  endif

  if (winnr('$')==1 && tabpagenr('$')==1)
    if (confirm('Você realmente deseja sair ?', '&Sim\n&Não', 2)==1)
      :quit
    endif
  else
    :quit
  endif
endfu

" Função para criar um textobject de indenção
function! g:utils#IndTxtObj(inner) abort
  let l:curline = line('.')
  let l:lastline = line('$')
  let l:i = indent(line('.')) - &shiftwidth * (v:count1 - 1)
  let l:i = l:i < 0 ? 0 : l:i
  if getline('.') !~# '^\\s*$'
    let l:p = line('.') - 1
    let l:nextblank = getline(l:p) =~# '^\\s*$'
    while l:p > 0 && ((l:i == 0 && !l:nextblank) || (l:i > 0 && ((indent(l:p) >= l:i && !(l:nextblank && a:inner)) || (l:nextblank && !a:inner))))
      -
      let l:p = line('.') - 1
      let l:nextblank = getline(l:p) =~# '^\\s*$'
    endwhile
    normal! 0V
    call cursor(l:curline, 0)
    let l:p = line('.') + 1
    let l:nextblank = getline(l:p) =~# '^\\s*$'
    while l:p <= l:lastline && ((l:i == 0 && !l:nextblank) || (l:i > 0 && ((indent(l:p) >= l:i && !(l:nextblank && a:inner)) || (l:nextblank && !a:inner))))
      +
      let l:p = line('.') + 1
      let l:nextblank = getline(l:p) =~# '^\\s*$'
    endwhile
    normal! $
  endif
endfunction

" Função para complementar o Qargs
function! g:utils#QuickfixFilenames() abort
  " Building a hash ensures we get each buffer only once
  let l:buffer_numbers = {}
  for l:quickfix_item in getqflist()
    let l:buffer_numbers[l:quickfix_item['bufnr']] = bufname(l:quickfix_item['bufnr'])
  endfor
  return join(values(l:buffer_numbers))
endfunction

" Função para abrir o arquivo de configuração
function! g:utils#config() abort
  :e $MYVIMRC
endfunction

" Iniciar o profile do vim
function! g:utils#profile() abort
  let l:arquivo = '~/vim_profile.log'
  execute 'profile start ' . l:arquivo
  execute 'profile func *'
  execute 'profile file *'
  echom 'Profiling Iniciado (O vim vai fazer o profile até a sua saida, arquivo em ' . l:arquivo . ').'
endfunction


" Fechar um buffer (Buffer Close)
function! g:utils#CloseSplitOrDeleteBuffer() abort
  let l:curNr = winnr()
  let l:curBuf = bufnr('%')
  wincmd w                    " Tenta ir para o proximo split
  if winnr() ==# l:curNr         " Não existe mais splits
    exe 'bdelete'
  elseif l:curBuf != bufnr('%') " Existe um split em outro buffer
    wincmd W                  " move back"
    exe 'bdelete'
  else                        " Existe um split no mesmo buffer
    wincmd W
    wincmd c
  endif
endfunction

" Função para salvar o buffer
function! g:utils#AutoSave() abort
  if &modified
    silent! update
  endif
endfunction

" Função para ajustar o tamanho da janela atual
function! g:utils#AdjustWindowHeight(minheight, maxheight) abort
  exe max([min([line('$'), a:maxheight]), a:minheight]) . 'wincmd _'
endfunction

" Função de auxilio para executar macros em visual mode
function! g:utils#ExecuteMacroOverVisualRange() abort
  echo '@'.getcmdline()
  execute ':"<,">normal @'.nr2char(getchar())
endfunction

" Função para limitar tempo de execução da função
function! g:utils#LongEnough( timer, delay, ... ) abort
  let l:result = 0
  let l:suppressionCount = 0
  if ( exists( 'a:1' ) )
    let l:suppressionCount = a:1
  endif
  " This is the first time we're being called.
  if ( !exists( a:timer ) )
    let l:result = 1
  else
    let l:timeElapsed = localtime() - {a:timer}
    " If it's been a while...
    if ( l:timeElapsed >= a:delay )
      let l:result = 1
    elseif ( l:suppressionCount > 0 )
      let {a:timer}_callCount += 1
      " It hasn't been a while, but the number of times we have been called has hit the suppression limit, so we activate
      " anyway.
      if ( {a:timer}_callCount >= l:suppressionCount )
        let l:result = 1
      endif
    endif
  endif
  " Reset both the timer and the number of times we've been called since the last update.
  if ( l:result )
    let {a:timer} = localtime()
    let {a:timer}_callCount = 0
  endif
  return l:result
endfunction

" Completar Tags manualmente
function! g:utils#manualTagComplete() abort
  if pumvisible()
    return g:deoplete#mappings#close_popup()
  else
    return g:deoplete#mappings#manual_complete('tag')
  endif
endfunction

function! g:utils#JumpToDefinition(split) abort
  try
    call phpcd#JumpToDefinition(a:split)
  catch
    if a:split == "normal"
      exec("tag ".expand("<cword>"))
    elseif a:split == "split"
      sp
      exec("tag ".expand("<cword>"))
    elseif a:split == "vsplit"
      vsp
      exec("tag ".expand("<cword>"))
    endif
  endtry
endfunction

function! g:utils#CompletePHP(findstart, base) abort
  call phpcd#CompletePHP(a:findstart, a:base)
endfunction
