setlocal noexpandtab
setlocal list
setlocal listchars=tab:+\ ,eol:-
setlocal formatprg=par\ -w80\ -T4
setlocal tabstop=4
setlocal shiftwidth=4
setlocal softtabstop=4
UltiSnipsAddFiletypes java


" Keybinds Eclim
nnoremap <silent> <buffer> <leader>i :JavaImport<cr>
nnoremap <silent> <buffer> <leader>d :JavaDocSearch -x declarations<cr>
nnoremap <silent> <buffer> <cr> :JavaSearchContext<cr>
