let g:lightline = {
      \ 'colorscheme': 'onedark',
      \ 'active': {
            \   'left': [ [ 'paste' ],
            \             [ 'filename', 'modified' ] ]
            \ },
            \ 'component_function': {
            \   'gitbranch': 'FugitiveHead',
            \   'filename': 'LightlineFilename'
            \ },
      \ }

function! LightlineFilename()
  if &filetype ==# 'javascript' ||
      \ &filetype ==# 'typescript' ||
      \ &filetype ==# 'typescriptreact'
    let l:dirName = expand("%:p:h:t")
    let l:fileName = expand("%:t:r")
    if l:dirName == l:fileName
      return expand("%:t")
    endif
    return l:dirName . "/" . expand("%:t")
  endif
  return expand('%:t') !=# '' ? expand('%:t') : '[No Name]'
endfunction
