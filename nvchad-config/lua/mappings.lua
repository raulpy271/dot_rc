require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", "<leader>q", "<cmd>confirm qa<cr>", { desc = "Quit all windows" })
map("n", "gb", "<cmd>pop<cr>", { desc = "Go back in tagstack"})

-- change the size of the vertical terminal
map({ "n", "t" }, "<A-v>", function()
  require("nvchad.term").toggle { pos = "vsp", id = "vtoggleTerm", size = 0.5 }
end, { desc = "terminal toggleable vertical term" })

-- change the size and position of the floating terminal
map({ "n", "t" }, "<A-i>", function()
  require("nvchad.term").toggle {
    pos = "float",
    id = "floatTerm",
    float_opts = {
      row = 0.25,
      col = 0.2,
      width = 0.6,
      height = 0.5
    }
  }
end, { desc = "terminal toggle floating term" })

map("t", "<C-h>", "<C-\\><C-N><C-w>h", { desc = "switch window left in terminal" })
map("t", "<C-l>", "<C-\\><C-N><C-w>l", { desc = "switch window right in terminal" })
map("t", "<C-j>", "<C-\\><C-N><C-w>j", { desc = "switch window down in terminal" })
map("t", "<C-k>", "<C-\\><C-N><C-w>k", { desc = "switch window up in terminal" })
