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
set mouse=a " enable mouse interactions, 'a' means all modes

set wildignorecase " ignore case when expanding suggestions
set ignorecase
set smartcase

" https://parceljs.org/features/development/#safe-write
set backupcopy=yes

" Since number column is hidden, this is a way to give text area left pagging
set scl=yes

" set foldmethod=indent

" autocmd WinEnter,BufEnter * set cursorline
" autocmd WinLeave,BufLeave * set nocursorline
" autocmd VimLeave * echo "vim-leave"


" if exists('$TMUX')
"   " tmux will only forward escape sequences to the terminal if surrounded by a DCS sequence
"   echo "exists tmux"
"   let &t_SI .= "\<Esc>Ptmux;\<Esc>\<Esc>[4 q\<Esc>\\"
"   let &t_EI .= "\<Esc>Ptmux;\<Esc>\<Esc>[3 q\<Esc>\\"
"   autocmd VimLeave * silent !echo -ne "\033Ptmux;\033\033[0 q\033\\"
" " else
" "   let &t_SI .= "\<Esc>[4 q"
" "   let &t_EI .= "\<Esc>[2 q"
" "   autocmd VimLeave * silent !echo -ne "\033[0 q"
" endif
set guicursor=n-v-c-sm:hor30-iCursor-blinkwait300-blinkon200-blinkoff150,i-ci-ve:ver25,r-cr-o:hor20
