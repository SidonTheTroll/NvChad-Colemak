--  ____  _             _           
-- |  _ \| |_   _  __ _(_)_ __  ___ 
-- | |_) | | | | |/ _` | | '_ \/ __|
-- |  __/| | |_| | (_| | | | | \__ \
-- |_|   |_|\__,_|\__, |_|_| |_|___/
--                |___/             




local plugins = {

  { "wakatime/vim-wakatime", lazy = false },
  { "mhinz/vim-startify", lazy = false },
  { "preservim/tagbar", lazy = false },
  { "andweeb/presence.nvim", lazy = false },
}

vim.g.startify_custom_header = vim.fn.readfile('/home/sidon/.config/nvim/ascii.txt')

-- require("nvterm.terminal").send(" fish ") 

return plugins
