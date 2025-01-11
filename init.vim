
" tabs
set number
set autoindent
set expandtab
set tabstop=4
set shiftwidth=4


" read config file of in the escopo of a local project
silent! so! *.vimlocal

" shortcuts
" Open terminal in the left side :lt
cnoremap lt<cr> vertical split term://bash <CR><c-w>20<
" Open terminal in the right side :rt
cnoremap rt<cr> vertical split term://bash <CR><c-w>r<c-w>20<
" When in terminal mode <c-w> exit to normal mode
tnoremap <c-w> <c-\><c-n>
" CTRL-V in insert paste the clipboard
inoremap <c-v> <esc>"+pa

call plug#begin()

" PLUGIN: telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" PLUGIN: nvim-tree
Plug 'nvim-tree/nvim-web-devicons'
Plug 'nvim-tree/nvim-tree.lua'

" PLUGIN: lualine
Plug 'nvim-lualine/lualine.nvim'

" PLUGIN: gitsigns
Plug 'lewis6991/gitsigns.nvim'

" PLUGIN: barbar 
Plug 'romgrk/barbar.nvim', {'tag': 'v1.6.4'}

" PLUGIN: catppuccin
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }

" PLUGIN: nvim-lspconfig
Plug 'neovim/nvim-lspconfig'

" PLUGIN: nvim-cmp
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'lukas-reineke/cmp-rg'

call plug#end()

" Configure nvim-tree
:lua require("nvim-tree").setup{ view = { side = 'right' }}
:NvimTreeToggle

" Configure lualine
:lua require('lualine').setup{options = {theme = 'ayu_dark'}}
"

" Configure barbar
:lua require('barbar').setup({ icons = { button = 'x' } })
" Order the tabline by buffer number on every new buffer
autocmd BufAdd * :BufferOrderByBufferNumber
autocmd BufWipeout * :BufferOrderByBufferNumber

" Configure telescope
:lua << END
require('telescope').setup{defaults = {
    initial_mode = 'normal',
    border = true,
    borderchars = { "-", "|", "-", "|", "+", "+", "+", "+" } -- use ASCII border chars
}}
END

" Add LSP config
:lua << END
local capabilities = require("cmp_nvim_lsp").default_capabilities()
local lspconfig = require('lspconfig')
local cmp = require('cmp')

lspconfig.pyright.setup{
    capabilities = capabilities
}


lspconfig.phan.setup{
    --cmd = { "phan", "-m", "json", "--no-color", "--no-progress-bar", "--language-server-on-stdin", "-l", "/src/app" },
    capabilities = capabilities,
    root_dir = function()
        return vim.fn.getcwd()
    end
}

cmp.setup{
    snippet = {
        expand = function(args)
           vim.snippet.expand(args.body)
        end,
    },
    mapping = cmp.mapping.preset.insert({
       ['<C-Space>'] = cmp.mapping.complete(),
       ['<CR>'] = cmp.mapping.confirm({ select = true }),
    }),
    sources = {
       { name = 'nvim_lsp' },
       { name = 'rg' }
    }
}


END

" Configure gitsigns
:lua require('gitsigns').setup()

" Configure catppuccin 
colorscheme catppuccin-mocha

" PLUGIN: shortcuts
" search for files using CTRL-O, like vs-code
nnoremap <c-o> <cmd>lua require('telescope.builtin').find_files{hidden=true}<cr>
" search for string using CTRL-P
nnoremap <c-p> <cmd>Telescope live_grep<cr>
" search for references like shift-f12 in vs-code
nnoremap <f12> <cmd>Telescope grep_string<cr>
" override ls to search buffers using telescope
cnoremap ls<cr> <cmd>Telescope buffers theme=ivy layout_config={height=0.2}<cr>
" override go local definition to search overall definition
nnoremap gd <c-]>
" create "go back" mapping to go to last position before go to mapping
nnoremap gb <c-t>
" open/close file tree in right side
nnoremap <c-f> <cmd>NvimTreeToggle<cr>

" Add a bash terminal in a new tab
badd term://bash
