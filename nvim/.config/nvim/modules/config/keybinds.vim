" ================         Keybinds         ================ {{{

" Disable Ex Mode
nnoremap Q <nop>

" Toggle Paste mode
set pastetoggle=<F2>

" Mapeando <leader> para " " EspaÃ§o"
nnoremap <Space> <nop>
let mapleader = ' '
let maplocalleader = ' '

" Modifica a movimentaÃ§Ã£o por linhas visuais
nnoremap j gj
nnoremap k gk

" Salvar arquivo como root
"cmap w!! w !sudo tee % <CR>
cmap w!! w suda://%<CR>

" Disabilitar C-z, use sempre uuuuu
nnoremap <C-z> <nop>

" Y, Copiar a linha inteira
map Y y$

" lazy ':'
" nnoremap ; :
nnoremap \ :

" <leader>h limpa as buscas
nmap <leader>h :nohlsearch<CR>

" AbreviaÃ§Ãµes nos comandos
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

" Faz com que < e > continue com a seleÃ§Ã£o
vnoremap < <gv
vnoremap > >gv

" Mapeando jj para ESC
inoremap jk <ESC>

" Abrir um buffer limpo
nmap <leader>t :enew<cr>

" Proximo Buffer
nmap <leader>k :bnext<CR>
nmap <leader><Tab> :bnext<CR>

" Buffer anterior
nmap <leader>j :bprevious<CR>

nnoremap <leader>q :call utils#CloseSplitOrDeleteBuffer()<CR>
nnoremap <leader>qb :bp<cr>:bd #<cr>

" Salvar mais rÃ¡pido
nmap <leader>w :w!<cr>

" Remover EspaÃ§os em branco
map <Leader>T :%s/\s\+$//<CR>

" Transformar tabs em espaÃ§os no documento
map <Leader>R :retab<CR>

" Corrigir erros de digitaÃ§Ã£o
nnoremap <C-s> [s1z=<c-o>
inoremap <C-s> <Esc>[s1z=gi

" Salvar arquivo com <leader>s
nnoremap <leader>s :w<cr>

" Completar tags manualmente
inoremap <silent> <expr> <C-]> utils#manualTagComplete()

" Selecionar palavra sem pular
nnoremap * *``

" Visual AT
xnoremap @ :<C-u>call utils#ExecuteMacroOverVisualRange()<CR>

" Terminal
tnoremap <Esc> <C-\><C-n>

autocmd! FileType fzf tnoremap <buffer> <esc> <c-c>

" }}}
