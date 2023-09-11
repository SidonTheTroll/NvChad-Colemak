--   ____ _   _ ____ _____ ___  __  __ 
--  / ___| | | / ___|_   _/ _ \|  \/  |
-- | |   | | | \___ \ | || | | | |\/| |
-- | |___| |_| |___) || || |_| | |  | |
--  \____|\___/|____/ |_| \___/|_|  |_|




local M = {}

M.tagbar = {
  plugin = true,

  n = {
    -- Toggle 
    ["<F8>"] = { "<cmd> TagbarToggle <CR>", "Toggle Tagbar"},
  },
}
require("core.utils").load_mappings("tagbar")


M.split = {
  plugin = true,

  n = {
    ["<F6>"] = {"<cmd> split <CR>", "Split Horizontal tab"},
    ["<F7>"] = {"<cmd> vsplit <CR>", "Split Vertical tab"},
  },
}

require("core.utils").load_mappings("split")



vim.api.nvim_set_keymap('n', '<F6>', '<cmd>split<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<F7>', '<cmd>vsplit<CR>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<F8>', '<cmd>TagbarToggle<CR>', { noremap = true, silent = true })


-- M.todo-comments = {
--   plugin = true,
--
--   n = {
--     ["<leader>]t"] = {},
--   },
-- }
--
--
-- vim.keymap.set("n", "]t", function()
--   require("todo-comments").jump_next()
-- end, { desc = "Next todo comment" })
--
-- vim.keymap.set("n", "[t", function()
--   require("todo-comments").jump_prev()
-- end, { desc = "Previous todo comment" })

-- You can also specify a list of valid jump keywords


return M
