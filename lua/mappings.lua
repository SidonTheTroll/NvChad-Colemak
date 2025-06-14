require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

--  ______     __  __     ______     ______   ______     __    __    
-- /\  ___\   /\ \/\ \   /\  ___\   /\__  _\ /\  __ \   /\ "-./  \   
-- \ \ \____  \ \ \_\ \  \ \___  \  \/_/\ \/ \ \ \/\ \  \ \ \-./\ \  
--  \ \_____\  \ \_____\  \/\_____\    \ \_\  \ \_____\  \ \_\ \ \_\ 
--   \/_____/   \/_____/   \/_____/     \/_/   \/_____/   \/_/  \/_/ 

-- Navigation

map("i", "<C-b>", "<ESC>^i", { desc = "move beginning of line" })
map("i", "<C-f>", "<End>", { desc = "move end of line" })
map("i", "<C-h>", "<Left>", { desc = "move left" })
map("i", "<C-i>", "<Right>", { desc = "move right" })
map("i", "<C-n>", "<Down>", { desc = "move down" })
map("i", "<C-e>", "<Up>", { desc = "move up" })

map("n", "<C-h>", "<C-w>h", { desc = "switch window left" })
map("n", "<C-l>", "<C-w>i", { desc = "switch window right" })
map("n", "<C-j>", "<C-w>n", { desc = "switch window down" })
map("n", "<C-k>", "<C-w>e", { desc = "switch window up" })

-- Toggles 

map("n", "<F8>","<cmd> TagbarToggle<cr>", {desc = "Toggle Tagbar on or off"})
map("n", "<F5>", '<cmd> ASToggle<cr>', {desc = 'Toggle Autosave'})

map("n", "<F6>", "<cmd> split<cr>", {desc = "Split editor horizontally"})
map("n", "<F7>", "<cmd> vsplit<cr>", {desc = "Split editor vertically"})

-- nvim-Spectre
map('n', '<leader>S', '<cmd>lua require("spectre").toggle()<CR>', {desc = "Spectre Toggle"})
map('n', '<leader>sw', '<cmd>lua require("spectre").open_visual({select_word=true})<CR>', {desc = "Spectre search current word"})
map('v', '<leader>sw', '<esc><cmd>lua require("spectre").open_visual()<CR>', {desc = "Spectre search current word"})
map('n', '<F9>', '<cmd>lua require("spectre").open_file_search({select_word=true})<CR>', {desc = "Spectre search on current file"})
