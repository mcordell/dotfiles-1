" Leader Functions
" Set mapleader to an easier key.
let mapleader=","
let maplocalleader=","

map <Leader>.  :Ag 
map <Leader>a  :call    RunAllSpecs()<CR>
map <Leader>b  :!bundle install<cr>
map <Leader>e  :e       <C-R>=expand("%:p:h") . '/'<CR>
map <leader>ev :vsplit  $MYVIMRC<cr>
map <Leader>f :CommandTFlush<CR>
map <Leader>h :CommandT<CR>
map <Leader>l  :call    RunLastSpec()<CR>
map <Leader>i  mmgg=G`m<CR>
map <Leader>q  :e       ~/qcentrix/
map <Leader>s  :split   <C-R>=expand("%:p:h") . '/'<CR>
map <Leader>s  :call    RunNearestSpec()<CR>
map <leader>sv :source  $MYVIMRC<cr>
map <Leader>t  :call    RunCurrentSpecFile()<CR>
map <Leader>v  :vnew    <C-R>=expand("%:p:h") . '/'<CR>
map <Leader>u  :source  ~/.vimrc<cr>

" General mapping
map <C-t> <esc>:tabnew<CR>
map <C-h> :nohl<cr>
map <C-l> :<Space>
map <C-s> <esc>:w<CR>
map <C-t> <esc>:tabnew<CR>
map <C-x> <C-w>c
map <C-n> :cn<CR>
map <C-p> :cp<CR>

" Normal mode
nnoremap H          ^
nnoremap L          $
nnoremap <C-h>      :nohl<cr>

" Insert mode
inoremap jk         <esc>
inoremap <c-h>      <left>
inoremap <c-j>      <down>
inoremap <c-k>      <up>
inoremap <c-l>      <right>
inoremap <c-o>      <esc>

" Visual mode
vmap <Enter> <Plug>(EasyAlign)*

