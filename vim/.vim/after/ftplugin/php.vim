setlocal expandtab
setlocal list
setlocal listchars=tab:+\ ,eol:-
setlocal formatprg=par\ -w80\ -T4
setlocal tabstop=4
setlocal shiftwidth=4
setlocal softtabstop=4
UltiSnipsAddFiletypes php

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
