require('settings')
require('key-mappings')
require('user.diagnostics')
require('user.neovide-text-zoom')
require('plugins')

vim.cmd('source $HOME/.config/nvim/custom/watch-for-changes/init.vim')

vim.cmd("command! Browse lua require'user.github-open'.openGitHub()")
