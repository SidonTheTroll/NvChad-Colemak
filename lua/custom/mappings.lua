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

M.split = {
  plugin = true,

  n = {
    ["<F6>"] = {"<cmd> split <CR>", "Split Horizontal tab"},
    ["<F7>"] = {"<cmd> vsplit <CR>", "Split Vertical tab"},
  },
}

vim.api.nvim_set_keymap('n', '<F6>', '<cmd>split<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<F7>', '<cmd>vsplit<CR>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<F8>', '<cmd>TagbarToggle<CR>', { noremap = true, silent = true })

-- M.vimvisualmulti = {
--   plugin = true,
--
--   n = {
--     ["C-l"] = {}
--   }
--
-- }

return M
