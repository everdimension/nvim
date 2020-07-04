" Indent without losing selection
vnoremap < <gv
vnoremap > >gv

let mapleader=" "
nnoremap <Space> <Nop>

map <leader>rr :source $MYVIMRC<CR>
map <leader>ri :e $MYVIMRC<CR>
map <leader>rk :e ~/.config/nvim/keys/mappings.vim<CR>
map <leader>rc :NERDTree ~/.config/nvim<CR>

" Open/close tree view
map <C-\> :NERDTreeToggle<CR>
" Open tree view and find current file in it
map <leader>\\ :NERDTreeFind<CR>
" Focus tree view
nmap <leader><BS> :NERDTreeFocus<CR>

" save file with leader+S
map <leader>s :write<CR>

map <leader>/ <plug>NERDCommenterToggle

" Use alt + hjkl to resize windows
nnoremap <silent> <M-j>    :resize -2<CR>
nnoremap <silent> <M-k>    :resize +2<CR>
nnoremap <silent> <M-h>    :vertical resize -2<CR>
nnoremap <silent> <M-l>    :vertical resize +2<CR>

" Next buffer
" map <leader><tab> :bnext<CR>
" map <leader><S-tab> :bprevious<CR>
" map <M-tab> :bnext<CR>
" map <M-C-Y> :bprevious<CR> " alt-shift-tab
map <Tab> :bnext<CR>
map <S-Tab> :bprevious<CR> " alt-shift-tab

" Unload current buffer and delete it from the buffer list
" map <leader>w :bdelete<CR>
map <leader>w :bp\|bd #<CR>
map <leader>q :qa<CR>

" Prettier
map <C-M-f> :Prettier<CR>
vmap <C-M-f> <Plug>(coc-format-selected)

" Invisible characters
" Shortcut to rapidly toggle `set list`
map <leader>in :set list!<CR>

" Show invisible characters such as tabs, spaces, end of line, etc
autocmd FileType * set listchars=tab:▸\ ,eol:¬,space:·,trail:~
" autocmd FileType * set listchars=tab:▸\ ,eol:¬,space:␣,trail:~
