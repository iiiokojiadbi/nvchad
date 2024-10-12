require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("n", "<leader>w", "<cmd>w<CR>", { desc = "Save" })
map("n", "<leader>cx", function()
  require("nvchad.tabufline").closeAllBufs()
end, { desc = "Close All Buffers" })
-- Basic

map("i", "jj", "<ESC>")
map("n", "<leader>e", ":Neotree float toggle reveal<CR>")
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
