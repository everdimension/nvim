local null_ls = require("null-ls")

null_ls.setup({
  on_attach = function(client, bufnr)
    if client.supports_method("textDocument/formatting") then
      vim.keymap.set("n", "<Leader>f", function()
        vim.lsp.buf.format({ bufnr = vim.api.nvim_get_current_buf() })
      end, { buffer = bufnr, desc = "[lsp] format" })
    end

    if client.supports_method("textDocument/rangeFormatting") then
      local format = function()
        vim.lsp.buf.format({ bufnr = vim.api.nvim_get_current_buf() })
      end
      local options = { buffer = bufnr, desc = "[lsp] format" }
      vim.keymap.set("x", "<Leader>f", format, options)
      vim.keymap.set("x", "<C-M-f>", format, options)
    end
  end,
})

local prettier = require("prettier")

prettier.setup()
