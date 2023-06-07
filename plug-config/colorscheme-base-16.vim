" Window divider color:
" hi VertSplit guibg=bg guifg=bg
" https://stackoverflow.com/a/35320566/3523645

if g:themeType == "dark"
  let g:colorscheme_name = "base16-ayu-dark"
  colorscheme base16-ayu-dark
  highlight VertSplit guibg=bg guifg=black
endif
