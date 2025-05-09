local lsp = require('lsp-zero').preset({})

lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({buffer = bufnr})

  local opts = {buffer = true}

  vim.keymap.set('n', '<leader>a', '<cmd>lua vim.lsp.buf.code_action()<cr>', opts)
end)

-- (Optional) Configure lua language server for neovim
require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

-- START TODO JSONLS setup
-- completion for json files, e.g. tsconfig.json
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true
capabilities.textDocument.completion.completionItem.resolveSupport = {
  properties = {
    "documentation",
    "detail",
    "additionalTextEdits"
  }
}

require('lspconfig').jsonls.setup{
  capabilities = capabilities,
  filetypes = {"json"},
  settings = {
    json = {
      schemas = {
        fileMatch = {"tsconfig*.json"},
        url = "https://json.schemastore.org/tsconfig.json"
      },
    }
  }
}
-- END TODO JSONLS setup

require('lspconfig').emmet_language_server.setup({})

lsp.setup()

vim.diagnostic.config({
  -- Do not show diagnostics inline
  virtual_text = false,
})

-- Show diagnostics floating window faster:
-- Reduce updatetime which affects CursorHold
-- note: this setting is global and should be set only once
vim.o.updatetime = 500
vim.cmd [[autocmd! CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false})]]

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
