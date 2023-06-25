local builtin = require('telescope.builtin')
vim.keymap.set('n', '<D-p>', builtin.find_files, {}) -- for GUI env
vim.keymap.set('n', '<C-p>', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.git_files, {})
vim.keymap.set('n', '<leader>rg', ':Telescope grep_string search=<CR>', {})
-- vim.keymap.set('n', '<leader>rg', builtin.grep_string )
-- vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
-- vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
