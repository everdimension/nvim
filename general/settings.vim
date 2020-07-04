" set shiftwidth=2
set hidden

" do not continue comments on new lines
autocmd FileType * set formatoptions-=c formatoptions-=r formatoptions-=o

" Explicilty set python3 executable
let g:python3_host_prog = '/usr/local/bin/python3'

set autoindent
set tabstop=2 " make tab 2 spaces wide
set shiftwidth=2 " default number of spaces for indentation
set expandtab " new indentation is created with spaces

