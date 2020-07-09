let g:lightline = {
      \ 'colorscheme': 'onedark',
      \ 'active': {
            \   'left': [ [ 'paste' ],
            \             [ 'filename', 'modified' ] ]
            \ },
            \ 'component_function': {
            \   'gitbranch': 'FugitiveHead'
            \ },
      \ }
