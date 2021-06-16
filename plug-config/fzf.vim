" This is the default extra key bindings
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

" nnoremap <C-P> :GFiles<CR>
nnoremap <C-p> :Files<CR>
nnoremap <C-M-p> :Files ~<CR>
nmap <leader>rg :Rg<CR>
