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
map("i", "<C-d>", "<Home>", { desc = "move beginning of line" })
map("i", "<C-f>", "<End>", { desc = "move end of line" })
map("i", "<C-m>", "<Left>", { desc = "move left" })
map("i", "<C-i>", "<Right>", { desc = "move right" })
map("i", "<C-n>", "<Down>", { desc = "move down" })
map("i", "<C-e>", "<Up>", { desc = "move up" })

map("n", "<C-w>m", "<C-w>h", { desc = "switch window left" })
map("n", "<C-w>i", "<C-w>l", { desc = "switch window right" })
map("n", "<C-w>n", "<C-w>j", { desc = "switch window down" })
map("n", "<C-w>e", "<C-w>k", { desc = "switch window up" })

-- Change functions 
map('i', "<C-h>", "<CR>", { desc = "Alternate for return key" })

-- nvim-cmp
local cmp = require("cmp")

cmp.setup({
    mapping = {
        ['<C-n>'] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
        ['<C-k>'] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),
        ['<CR>']  = cmp.mapping.confirm({ select = true }),
        ['<C-h>']  = cmp.mapping.confirm({ select = true }),
        ['<C-Space>'] = cmp.mapping.complete(),
    }
})

-- Toggles 
map("n", "<F8>","<cmd> TagbarToggle<cr>", {desc = "Toggle Tagbar on or off"})
map("n", "<F5>", '<cmd> ASToggle<cr>', {desc = "Toggle Autosave"})

map("n", "<F6>", "<cmd> split<cr>", {desc = "Split editor horizontally"})
map("n", "<F7>", "<cmd> vsplit<cr>", {desc = "Split editor vertically"})

-- nvim-Spectre
map('n', '<leader>S', '<cmd>lua require("spectre").toggle()<CR>', {desc = "Spectre Toggle"})
map('n', '<leader>sw', '<cmd>lua require("spectre").open_visual({select_word=true})<CR>', {desc = "Spectre search current word"})
map('v', '<leader>sw', '<esc><cmd>lua require("spectre").open_visual()<CR>', {desc = "Spectre search current word"})
map('n', '<F9>', '<cmd>lua require("spectre").open_file_search({select_word=true})<CR>', {desc = "Spectre search on current file"})
