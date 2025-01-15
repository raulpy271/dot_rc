-- My Lunar Vim configuration
--
-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Example configs: https://github.com/LunarVim/starter.lvim
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny

-- Settings the colorscheme from hours
if tonumber(os.date("%H")) > 18 then
  lvim.colorscheme = "industry"
else
  lvim.colorscheme = "lunar"
end

-- Changing plugins config
lvim.builtin.nvimtree.setup.view.side = "right"
lvim.builtin.telescope.defaults.initial_mode = "normal"
lvim.builtin.telescope.defaults.border = true
lvim.builtin.telescope.defaults.borderchars = { "-", "|", "-", "|", "+", "+", "+", "+" }

-- Setting NeoVim Mappings
--
-- Go back in tagstack. It comeback to when the cursor was previusly
lvim.lsp.buffer_mappings.normal_mode['gb'] = {"<cmd>pop<cr>", "Go back in tagstack"}
lvim.builtin.comment.toggler.block = "<leader>{"

-- Quit all
lvim.builtin.which_key.mappings["q"] = {"<cmd>confirm qa<cr>", "Quit"}

-- CTRL-V in insert paste the clipboard
vim.api.nvim_set_keymap("i", "<c-v>", '<ESC>"+pa', { noremap = true })
