return {
  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    "nvim-tree/nvim-tree.lua",
    cmd = { "NvimTreeToggle", "NvimTreeFocus" },
    opts = { view = { side = 'right' } }
  },

  {
    "nvim-telescope/telescope.nvim",
    opts = { defaults = { initial_mode = 'normal' } }
  },
  {
    "lewis6991/gitsigns.nvim",
    opts = {
      on_attach = function(bufnr)
        local gitsigns = require('gitsigns')
        vim.keymap.set('n', '<leader>gs', gitsigns.stage_buffer, { buffer = bufnr, desc = "Git stage buffer"})
        vim.keymap.set('n', '<leader>gb', function() gitsigns.blame_line( { full = true }) end, { buffer = bufnr, desc = "Blame line with full commit"})
        vim.keymap.set('n', '<leader>gt', gitsigns.toggle_current_line_blame, { buffer = bufnr, desc = "Toggle current line blame"})
        vim.keymap.set('n', '<leader>gf', gitsigns.blame, { buffer = bufnr, desc = "Blame full file"})
      end
    }
  }

  -- test new blink
  -- { import = "nvchad.blink.lazyspec" },

  -- {
  -- 	"nvim-treesitter/nvim-treesitter",
  -- 	opts = {
  -- 		ensure_installed = {
  -- 			"vim", "lua", "vimdoc",
  --      "html", "css"
  -- 		},
  -- 	},
  -- },
}

