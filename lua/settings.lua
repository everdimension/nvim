-- set shiftwidth=2
vim.opt.shiftwidth = 2
vim.opt.hidden = true

-- do not continue comments on new lines
vim.cmd([[
    autocmd FileType * set formatoptions-=c formatoptions-=r formatoptions-=o
]])

-- Highlight text on yank to see what was copied
vim.api.nvim_exec([[
  augroup HighlightYank
    autocmd!
    autocmd TextYankPost * silent! lua vim.highlight.on_yank()
  augroup END
]], false)

-- Explicilty set python3 executable
vim.g.python3_host_prog = '/usr/local/bin/python3'

vim.opt.cindent = true -- better indentation is enabled by treesitter
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.mouse = 'nicr'
vim.opt.mouse = 'a'

vim.opt.wildignorecase = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.scrolloff = 2

vim.opt.backupcopy = 'yes'

vim.g.neovide_input_use_logo = true    -- true on macOS


vim.opt.scl = 'yes'

vim.opt.termguicolors = true

-- set foldmethod=indent

-- vim.cmd([[
--     autocmd WinEnter,BufEnter * set cursorline
--     autocmd WinLeave,BufLeave * set nocursorline
--     autocmd VimLeave * echo "vim-leave"
-- ]])

-- if exists('$TMUX') then
--     echo "exists tmux"
--     let &t_SI .= "\<Esc>Ptmux;\<Esc>\<Esc>[4 q\<Esc>\\"
--     let &t_EI .= "\<Esc>Ptmux;\<Esc>\<Esc>[3 q\<Esc>\\"
--     autocmd VimLeave * silent !echo -ne "\033Ptmux;\033\033[0 q\033\\"
-- else
--     let &t_SI .= "\<Esc>[4 q"
--     let &t_EI .= "\<Esc>[2 q"
--     autocmd VimLeave * silent !echo -ne "\033[0 q"
-- endif

vim.opt.guicursor = 'n-v-c-sm:hor30-iCursor-blinkwait300-blinkon200-blinkoff150,i-ci-ve:ver25,r-cr-o:hor20'

-- Ideas from https://bryankegley.me/posts/nvim-getting-started/
-- o.completeopt = 'menuone,noinsert,noselect'
-- bo.swapfile = false
-- o.backup = false

-- Neovide
vim.g.neovide_scale_factor = 1.15 -- 1.2 is more like my default

vim.g.neovide_padding_top = 10
vim.g.neovide_padding_right = 10
vim.g.neovide_padding_bottom = 0
vim.g.neovide_padding_left = 20
vim.g.neovide_scroll_animation_length = 0.3
vim.g.neovide_input_macos_alt_is_meta = true

vim.g.neovide_scroll_animation_length = 0.1

-- vim.g.neovide_cursor_vfx_mode = "torpedo"
