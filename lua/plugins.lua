-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Fuzzy finder, e.g. ctrl-p and search in files
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
    -- or                            , branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- Highlight letters to quickly navigate to next words 
	use {'unblevable/quick-scope', config = function()
    vim.g.qs_enable = 1
    vim.g.qs_highlight_on_keys = {'f', 'F', 't', 'T'}
  end}

  use({
    'rose-pine/neovim',
    as = 'rose-pine',
    config = function()
      vim.cmd('colorscheme rose-pine')
    end
  })
  use 'pbrisbin/vim-colors-off'

  -- Treesitter
  use({
    'nvim-treesitter/nvim-treesitter',
    run = function()
      local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
      ts_update()
    end,
  })

  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v2.x',
    requires = {
      -- LSP Support
      {'neovim/nvim-lspconfig'},             -- Required
      {                                      -- Optional
      'williamboman/mason.nvim',
      run = function()
        pcall(vim.cmd, 'MasonUpdate')
      end,
    },
    {'williamboman/mason-lspconfig.nvim'}, -- Optional

    -- Autocompletion
    {'hrsh7th/nvim-cmp'},     -- Required
    {'hrsh7th/cmp-nvim-lsp'}, -- Required
    {'L3MON4D3/LuaSnip'},     -- Required
  }
}

	-- Git integration
  -- use({
    -- 'mhinz/vim-signify',
    -- config = function()
      -- vim.g.signify_sign_add               = '▏'
      -- vim.g.signify_sign_change            = '▏'
    -- end
  -- })
  use {
    'lewis6991/gitsigns.nvim',
    config = function()
      require('gitsigns').setup()
      vim.keymap.set("n", "]c", ":Gitsigns next_hunk<CR>")
      vim.keymap.set("n", "[c", ":Gitsigns prev_hunk<CR>")
    end
  }

  -- Prettier formatter
  use('jose-elias-alvarez/null-ls.nvim')
  use('MunifTanjim/prettier.nvim')

  -- File tree view / Explorer
  use('nvim-tree/nvim-tree.lua')


  -- Comments
  use {
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup()
    end
  }

	-- Sets 'working directory' to the project root
	-- based on current file based on some heuristics (e.g. VCS)
	use 'airblade/vim-rooter'
	-- Auto pairs for '(' '[' '{'
	use 'jiangmiao/auto-pairs'
	-- Surround
	use 'tpope/vim-surround'
	-- Multiple cursors like in sublime text
	use 'terryma/vim-multiple-cursors'


  -- Start screen
  use {
    'mhinz/vim-startify',
    config = function()
      vim.g.startify_change_to_vcs_root = 1
      vim.g.startify_custom_header = {}
    end
  }

end)
