require('settings')
require('key-mappings')
require('user.neovide-text-zoom')

vim.cmd('source $HOME/.config/nvim/custom/watch-for-changes/init.vim')

vim.cmd("command! Browse lua require'user.github-open'.openGitHub()")
