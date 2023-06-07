  if g:themeType == "light"
    let colorscheme_name = "one"
  else
    let colorscheme_name = "onedark"
  endif
let g:lightline = {
      \ 'enable': {
          \ 'tabline': 0
      \ },
      \ 'colorscheme': colorscheme_name,
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

command! LightlineReload call LightlineReload()

function! LightlineReload()
  echo "LightlineReload"
  call lightline#init()
  call lightline#colorscheme()
  call lightline#update()
endfunction

:call timer_start(200, { -> execute("call LightlineReload()") })
