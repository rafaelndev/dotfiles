setlocal noexpandtab
setlocal list
setlocal listchars=tab:+\ ,eol:-
setlocal formatprg=par\ -w80\ -T4
setlocal tabstop=4
setlocal shiftwidth=4
setlocal softtabstop=4
UltiSnipsAddFiletypes java

" Keybinds Eclim
nnoremap <silent> <buffer> <leader>ji :JavaImport<cr>
nnoremap <silent> <buffer> <leader>jd :JavaDocSearch -x declarations<cr>
nnoremap <silent> <buffer> <leader>jc :JavaCorrect<cr>
nnoremap <silent> <buffer> <leader>jo :JavaConstruct<cr>
nnoremap <silent> <buffer> <leader>jg :JavaGetSet<cr>
nnoremap <silent> <buffer> <leader>jr :JavaRename 
nnoremap <silent> <buffer> <C-cr> :JavaSearchContext<cr>
