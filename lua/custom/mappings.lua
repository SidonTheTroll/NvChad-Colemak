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

vim.api.nvim_set_keymap('n', '<F8>', '<cmd>TagbarToggle<CR>', { noremap = true, silent = true })



return M
