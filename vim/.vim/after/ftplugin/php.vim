setlocal expandtab
setlocal autoindent
setlocal smartindent
setlocal list
setlocal formatprg=par\ -w80\ -T4
setlocal tabstop=4
setlocal shiftwidth=4
setlocal softtabstop=4
let php_html_in_strings= 1
let php_sql_query = 1
" UltiSnipsAddFiletypes php
set iskeyword-=-
set iskeyword-=:

nnoremap <Leader>prlv :call PhpRenameLocalVariable()<CR>
nnoremap <Leader>prcv :call PhpRenameClassVariable()<CR>
nnoremap <Leader>prm :call PhpRenameMethod()<CR>
nnoremap <Leader>peu :call PhpExtractUse()<CR>
vnoremap <Leader>pec :call PhpExtractConst()<CR>
nnoremap <Leader>pep :call PhpExtractClassProperty()<CR>
vnoremap <Leader>pem :call PhpExtractMethod()<CR>
nnoremap <Leader>pnp :call PhpCreateProperty()<CR>
nnoremap <Leader>pdu :call PhpDetectUnusedUseStatements()<CR>
vnoremap <Leader>p== :call PhpAlignAssigns()<CR>
nnoremap <Leader>psg :call PhpCreateSettersAndGetters()<CR>
nnoremap <Leader>pda :call PhpDocAll()<CR>
nnoremap <Leader>pdf :call pdv#DocumentWithSnip()<CR>
nnoremap <Leader>pdoc :call PhpDocSingle()<CR>

" nnoremap <silent><leader>pcf :Dispatch php-cs-fixer fix % -v --level=psr2 --ansi<CR>:e<CR>:w<CR>
function! IPhpInsertUse()
    call PhpInsertUse()
    call feedkeys('a',  'n')
endfunction
autocmd FileType php inoremap <Leader>piu <Esc>:call IPhpInsertUse()<CR>
autocmd FileType php noremap <Leader>piu :call PhpInsertUse()<CR>

silent! unmap <unique> <buffer> <C-]>
" silent! nnoremap <silent> <unique> <buffer> <C-]>
" 			\ :<C-U>call g:utils#JumpToDefinition('normal')<CR>
" silent! unmap <unique> <buffer> <C-W><C-]>
" silent! nnoremap <silent> <unique> <buffer> <C-W><C-]>
"       \ :<C-U>call g:utils#JumpToDefinition('split')<CR>
" unmap <unique> <buffer> <C-W><C-\>
" silent! nnoremap <silent> <unique> <buffer> <C-W><C-\>
"       \ :<C-U>call g:utils#JumpToDefinition('vsplit')<CR>
