local lsp = require('lsp-zero').preset({})

lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({buffer = bufnr})

  local opts = {buffer = true}

  vim.keymap.set('n', '<leader>a', '<cmd>lua vim.lsp.buf.code_action()<cr>', opts)
end)

-- (Optional) Configure lua language server for neovim
require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

lsp.setup()

-- Make sure you setup `cmp` after lsp-zero

local cmp = require('cmp')

local cmp_select_opts = {behavior = cmp.SelectBehavior.Select}

cmp.setup({
  mapping = {
    ['<CR>'] = cmp.mapping.confirm({select = true}),
    -- ['<Tab>'] = cmp.mapping.confirm({select = true}),
    ['<Tab>'] = cmp.mapping.select_next_item(cmp_select_opts),
    ['<Shift-Tab>'] = cmp.mapping.select_prev_item(cmp_select_opts),
  }
})
