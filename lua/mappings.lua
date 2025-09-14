require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("i", "jj", "<ESC>")

map("n", "<leader>tda", "<cmd>ToDoTxtCapture <cr>")
map("n", "<leader>tdt", "<cmd>ToDoTxtTasksToggle <cr>")
--map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
