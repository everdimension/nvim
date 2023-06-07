" Indent without losing selection
vnoremap < <gv
vnoremap > >gv

nnoremap <Space> <Nop>
let mapleader=" "

" turn last word to uppercase
inoremap <c-u> <esc>viwUea
map <leader>rr :source $MYVIMRC<CR>
map <leader>ri :e $MYVIMRC<CR>
map <leader>rk :e ~/.config/nvim/keys/mappings.vim<CR>
map <leader>rc :NvimTreeOpen ~/.config/nvim<CR>

nmap n nzz
nmap N Nzz

nmap <leader>co :Colors<CR>

" Stop the highlighting for the 'hlsearch' option
nnoremap <leader>n :noh<CR>
" Open/close tree view
map <C-\> :NvimTreeToggle<CR>
" Open tree view and find current file in it
map <leader>\\ :NvimTreeFindFile<CR>
" Focus tree view
nmap <leader><BS> :NvimTreeFocus<CR>

nmap <C-h> 0ea<Space>
nmap <C-t> 0ea<Space>type<esc>

" save file with leader+S
map <leader>s :write<CR>

nnoremap - 0

" map <leader>/ <plug>NERDCommenterToggle
map <leader>/ gcc

" Use alt + hjkl to resize windows
nnoremap <silent> <M-j>    :resize -2<CR>
nnoremap <silent> <M-k>    :resize +2<CR>
nnoremap <silent> <M-h>    :vertical resize -2<CR>
nnoremap <silent> <M-l>    :vertical resize +2<CR>

inoremap <M-BS> <esc>lc0
" nnoremap <-BS> <esc>lc0
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

" get into command state to search opened buffers
nnoremap <leader>b :b <C-d>

" Prettier
map <C-M-f> :Prettier<CR>
vmap <C-M-f> <Plug>(coc-format-selected)

" Invisible characters
" Shortcut to rapidly toggle `set list`
map <leader>in :set list!<CR>

" Show invisible characters such as tabs, spaces, end of line, etc
" autocmd FileType * set listchars=tab:▸\ ,eol:¬,space:·,trail:~
set listchars=tab:▸\ ,eol:¬,space:·,trail:~
" autocmd FileType * set listchars=tab:▸\ ,eol:¬,space:␣,trail:~


" Copy whole file contents
nmap <leader>yy gg<S-v>G"*y''
" 
nmap <leader>cc :let @*=@0<CR>
map <leader>p "0p
