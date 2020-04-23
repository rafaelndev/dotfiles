" ================        Arco-Iris         ===============

set background=dark

if has('nvim')
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

colorscheme gruvbox

map  <silent> <F4> :call gruvbox#hls_toggle()<CR>
imap <silent> <F4> <ESC>:call gruvbox#hls_toggle()<CR>a
vmap <silent> <F4> <ESC>:call gruvbox#hls_toggle()<CR>gv

" nnoremap <silent> <CR> :call gruvbox#hls_hide()<CR><CR>

" Cor de palavras erradas
hi SpellBad cterm=underline ctermfg=red
hi SpellBad gui=undercurl guisp=red guifg=red

hi StartifyHeader ctermfg=40 guifg=40
