
syntax on
" highlight Normal guibg=NONE ctermbg=NONE
" highlight VertSplit guibg=bg

if g:themeType == "light"
  set background=light
  colorscheme monochrome
  highlight Normal guibg=NONE ctermbg=NONE
  highlight VertSplit guibg=bg guifg=lightgrey
else
  " let g:themeType = "light"
  set background=dark
  colorscheme monochrome
  highlight Normal guibg=NONE ctermbg=NONE
  highlight VertSplit guibg=bg
endif
" if g:themeType == "dark"
"   let g:colorscheme_name = 'onedark'
" 
"   syntax on
"   colorscheme monochrome
"   highlight Normal guibg=NONE ctermbg=NONE
"   highlight VertSplit guibg=bg
" endif
