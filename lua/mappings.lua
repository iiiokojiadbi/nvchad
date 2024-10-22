require "nvchad.mappings"

-- add yours here
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

local map = vim.keymap.set

-- Основные
map("i", "jj", "<ESC>")
-- map("n", ";", ":", { desc = "CMD enter command mode" })
map("n", "<leader>w", "<cmd>w<CR>", { desc = "Сохранить" })

-- Разделение экрана
-- map("n", "|", ":vsplit<CR>", { desc = "Вертикальный буфер" })
-- map("n", "\\", ":split<CR>", { desc = "Горизонтальный буфер" })

-- Tmux
-- map("n", "<leader>ft", "<cmd>TodoTelescope<CR>", { desc = "Find Todo" })
map("n", "\\", "<cmd>:vsplit<CR>", { desc = "Вертикальный буфер" })
map("n", "|", "<cmd>:split<CR>", { desc = "Горизонтальный буфер" })
map("n", "<c-l>", "<cmd>:TmuxNavigateRight<cr>", { desc = "Tmux вправо" })
map("n", "<c-h>", "<cmd>:TmuxNavigateLeft<cr>", { desc = "Tmux влево" })
map("n", "<c-k>", "<cmd>:TmuxNavigateUp<cr>", { desc = "Tmux вверх" })
map("n", "<c-j>", "<cmd>:TmuxNavigateDown<cr>", { desc = "Tmux вниз" })

-- Git
map("n", "<leader>gg", ":Git<CR>", { desc = "Git открыть" })
map("n", "<leader>gl", ":Flog<CR>", { desc = "Git лог" })
map("n", "<leader>gf", ":DiffviewFileHistory<CR>", { desc = "Git история файла" })
map("n", "<leader>gc", ":DiffviewOpen HEAD~1<CR>", { desc = "Git последний коммит" })
map("n", "<leader>gt", ":DiffviewToggleFile<CR>", { desc = "Git переключить в просмотре" })

-- Terminal
map("n", "<C-f>", function()
  require("nvchad.term").toggle { pos = "float" }
end, { desc = "Показать плавающий терминал" })
map("t", "<C-f>", function()
  require("nvchad.term").toggle { pos = "float" }
end, { desc = "Скрыть плавающий терминал" })
-- map("n", "<C-]>", function()
--   require("nvchad.term").toggle { pos = "vsp", size = 0.4 }
-- end, { desc = "Toogle Terminal Vertical" })
-- map("n", "<C-\\>", function()
--   require("nvchad.term").toggle { pos = "sp", size = 0.4 }
-- end, { desc = "Toogle Terminal Horizontal" })
-- map("t", "<C-]>", function()
--   require("nvchad.term").toggle { pos = "vsp" }
-- end, { desc = "Toogle Terminal Vertical" })
-- map("t", "<C-\\>", function()
--   require("nvchad.term").toggle { pos = "sp" }
-- end, { desc = "Toogle Terminal Horizontal" })

-- Tabufline
map("n", "<leader>cx", function()
  require("nvchad.tabufline").closeAllBufs()
end, { desc = "Удалить все буферы" })

-- Trouble
map("n", "<leader>qx", "<cmd>Trouble diagnostics toggle focus=true<CR>", { desc = "Trouble" })
map("n", "<leader>qw", "<cmd>Trouble workspace_diagnostics<CR>", { desc = "Open Workspace Trouble" })
map("n", "<leader>qd", "<cmd>Trouble document_diagnostics<CR>", { desc = "Open Document Trouble" })
map("n", "<leader>qq", "<cmd>Trouble quickfix<CR>", { desc = "Open Quickfix" })
map("n", "<leader>ql", "<cmd>Trouble loclist<CR>", { desc = "Open Location List" })
map("n", "<leader>qt", "<cmd>TodoTrouble<CR>", { desc = "Open Todo Trouble" })
