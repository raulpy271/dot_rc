require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"
local nvlsp = require "nvchad.configs.lspconfig"
local servers = { "html", "cssls", "intelephense", "pyright" }


local map = vim.keymap.set

local attach = nvlsp.on_attach

nvlsp.on_attach = function(client, bufnr)
  attach(client, bufnr)

  local function opts(desc)
    return { buffer = bufnr, desc = "LSP " .. desc }
  end

  -- My custom mappings
  map("n", "gd", "<cmd>Telescope lsp_definitions<cr>", opts "Go to definition")
  map("n", "grr", "<cmd>Telescope lsp_references<cr>", opts "Go to references")
  map("n", "gO", "<cmd>Telescope lsp_document_symbols<cr>", opts "Document symbols")
  map("n", "<leader>D", "<cmd>Telescope lsp_type_definitions<cr>", opts "Go to type definition")
end


vim.lsp.enable(servers)

