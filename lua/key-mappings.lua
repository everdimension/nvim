-- Indent without losing selection
vim.api.nvim_set_keymap('v', '<', '<gv', {})
vim.api.nvim_set_keymap('v', '>', '>gv', {})

vim.g.mapleader = ' '

-- Open :Explore (file tree view)
vim.keymap.set('n', '<leader>kb', vim.cmd.Ex)

-- turn last word to uppercase
vim.api.nvim_set_keymap('i', '<c-u>', '<esc>viwUea', {})
vim.api.nvim_set_keymap('n', '<leader>rr', ':source $MYVIMRC<CR>', {})
vim.api.nvim_set_keymap('n', '<leader>ri', ':e $MYVIMRC<CR>', {})
vim.api.nvim_set_keymap('n', '<leader>rk', ':e ~/.config/nvim/keys/mappings.vim<CR>', {})
vim.api.nvim_set_keymap('n', '<leader>rc', ':NvimTreeOpen ~/.config/nvim<CR>', {})

vim.api.nvim_set_keymap('n', 'n', 'nzz', {})
vim.api.nvim_set_keymap('n', 'N', 'Nzz', {})

vim.api.nvim_set_keymap('n', '<leader>co', ':Colors<CR>', {})

-- Stop the highlighting for the 'hlsearch' option
vim.api.nvim_set_keymap('n', '<leader>n', ':noh<CR>', {})
-- Open/close tree view
vim.api.nvim_set_keymap('n', '<C-\\>', ':NvimTreeToggle<CR>', {})
-- Open tree view and find current file in it
vim.api.nvim_set_keymap('n', '<leader>\\', ':NvimTreeFindFile<CR>', {})
-- Focus tree view
vim.api.nvim_set_keymap('n', '<leader><BS>', ':NvimTreeFocus<CR>', {})

vim.api.nvim_set_keymap('n', '<C-h>', '0ea<Space>', {})
vim.api.nvim_set_keymap('n', '<C-t>', '0ea<Space>type<esc>', {})

-- save file with leader+S
vim.api.nvim_set_keymap('n', '<leader>s', ':write<CR>', {})
vim.api.nvim_set_keymap('n', '<D-s>', ':write<CR>', {})

vim.api.nvim_set_keymap('n', '-', '0', {})

-- Comment.nvim
vim.api.nvim_set_keymap('n', '<leader>/', 'gcc', {})
vim.api.nvim_set_keymap('v', '<leader>/', 'gcc', {})
vim.api.nvim_set_keymap('n', '<D-/>', 'gcc', {})
vim.api.nvim_set_keymap('v', '<D-/>', 'gcc<ESC>', {})
vim.api.nvim_set_keymap('i', '<D-/>', '<esc>gcca', {})

-- Use alt + hjkl to resize windows
vim.api.nvim_set_keymap('n', '<M-j>', ':resize -2<CR>', { silent = true })
vim.api.nvim_set_keymap('n', '<M-k>', ':resize +2<CR>', { silent = true })
vim.api.nvim_set_keymap('n', '<M-h>', ':vertical resize -2<CR>', { silent = true })
vim.api.nvim_set_keymap('n', '<M-l>', ':vertical resize +2<CR>', { silent = true })

vim.api.nvim_set_keymap('i', '<M-BS>', '<esc>lc0', {})

-- Next buffer
vim.api.nvim_set_keymap('n', '<Tab>', ':bnext<CR>', {})
vim.api.nvim_set_keymap('n', '<S-Tab>', ':bprevious<CR>', {})

-- Unload current buffer and delete it from the buffer list
vim.api.nvim_set_keymap('n', '<leader>w', ':bp|bd #<CR>', {})
vim.api.nvim_set_keymap('n', '<leader>q', ':qa<CR>', {})

-- get into command state to search opened buffers
vim.api.nvim_set_keymap('n', '<leader>b', ':b <C-d>', {})

-- Prettier
vim.api.nvim_set_keymap('n', '<C-M-f>', ':Prettier<CR>', {})
vim.api.nvim_set_keymap('v', '<C-M-f>', '<Plug>(coc-format-selected)', {})

-- Invisible characters
-- Shortcut to rapidly toggle `set list`
vim.api.nvim_set_keymap('n', '<leader>in', ':set list!<CR>', {})

-- Show invisible characters such as tabs, spaces, end of line, etc
vim.api.nvim_set_option('listchars', 'tab:▸\\ ,eol:¬,space:·,trail:~')

-- Copy whole file contents
vim.api.nvim_set_keymap('n', '<leader>yy', 'ggVG"*y\'\'', {})
-- Put current yank to system clipboard
vim.api.nvim_set_keymap('n', '<leader>cc', ':let @*=@0<CR>', {})
-- Put current file path to system clipboard, cs means "copy source" :)
vim.api.nvim_set_keymap('n', '<leader>cs', ':let @*=expand("%")<CR>', {})

vim.api.nvim_set_keymap('n', '<leader>p', '"0p', {})


-- Move selection
vim.keymap.set("v", "<C-j>", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "<C-k>", ":m '<-2<CR>gv=gv")

-- Neovide

-- Copy and Paste
vim.api.nvim_set_keymap('n', '<D-v>', '"+p', {})
vim.api.nvim_set_keymap('i', '<D-v>', '<esc>"+p', {})
vim.api.nvim_set_keymap('v', '<D-c>', '"+y<CR>', {})

-- Next buffer
vim.api.nvim_set_keymap('n', '<D-]>', ':bnext<CR>', {})
vim.api.nvim_set_keymap('n', '<D-[>', ':bprevious<CR>', {})
