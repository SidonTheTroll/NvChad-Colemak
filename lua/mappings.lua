require "nvchad.mappings"

-- add yours here
local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "nr", "<ESC>") 

--  ______     __  __     ______     ______   ______     __    __    
-- /\  ___\   /\ \/\ \   /\  ___\   /\__  _\ /\  __ \   /\ "-./  \   
-- \ \ \____  \ \ \_\ \  \ \___  \  \/_/\ \/ \ \ \/\ \  \ \ \-./\ \  
--  \ \_____\  \ \_____\  \/\_____\    \ \_\  \ \_____\  \ \_\ \ \_\ 
--   \/_____/   \/_____/   \/_____/     \/_/   \/_____/   \/_/  \/_/ 

-- Navigation
map("i", "<C-b>", "<Home>", { desc = "move beginning of line" })
map("i", "<C-f>", "<End>", { desc = "move end of line" })

map("i", "<C-h>", "<Left>", { desc = "move left" })
map("i", "<C-n>", "<Down>", { desc = "move down" })
map("i", "<C-e>", "<Up>", { desc = "move up" })
map("i", "<C-i>", "<Right>", { desc = "move right" })

map("n", "<C-w>h", "<C-w>h", { desc = "switch window left" })
map("n", "<C-w>n", "<C-w>j", { desc = "switch window down" })
map("n", "<C-w>e", "<C-w>k", { desc = "switch window up" })
map("n", "<C-w>i", "<C-w>l", { desc = "switch window right" })

-- Change functions 
map('i', "<C-m>", "<CR>", { desc = "Alternate for return key" })
map('i', "<C-z>", "<C-w>", { desc = "Alternate for ctrl+w" })
map('i', "<C-BS>", "<C-w>", { desc = "Alternate for ctrl+w" })

-- nvim-cmp
local cmp = require("cmp")

cmp.setup({
    mapping = {
        ['<C-n>'] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
        ['<C-k>'] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),
        ['<CR>']  = cmp.mapping.confirm({ select = true }),
        ['<C-m>'] = cmp.mapping.confirm({ select = true }),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<Tab>'] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.confirm({ select = true }) -- acts like <C-m>
            else
                fallback()
            end
        end, { "i", "s" }),
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
