vim.g.base46_cache = vim.fn.stdpath "data" .. "/base46/"
vim.g.mapleader = " "

-- bootstrap lazy and all plugins
local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"

if not vim.uv.fs_stat(lazypath) then
  local repo = "https://github.com/folke/lazy.nvim.git"
  vim.fn.system { "git", "clone", "--filter=blob:none", repo, "--branch=stable", lazypath }
end

vim.opt.rtp:prepend(lazypath)

local lazy_config = require "configs.lazy"

-- load plugins
require("lazy").setup({
  {
    "NvChad/NvChad",
    lazy = false,
    branch = "v2.5",
    import = "nvchad.plugins",
  },

  { import = "plugins" },
}, lazy_config)

-- load theme
dofile(vim.g.base46_cache .. "defaults")
dofile(vim.g.base46_cache .. "statusline")

require "options"
require "nvchad.autocmds"

vim.schedule(function()
  require "mappings"
end)

--  ______     __  __     ______     ______   ______     __    __    
-- /\  ___\   /\ \/\ \   /\  ___\   /\__  _\ /\  __ \   /\ "-./  \   
-- \ \ \____  \ \ \_\ \  \ \___  \  \/_/\ \/ \ \ \/\ \  \ \ \-./\ \  
--  \ \_____\  \ \_____\  \/\_____\    \ \_\  \ \_____\  \ \_\ \ \_\ 
--   \/_____/   \/_____/   \/_____/     \/_/   \/_____/   \/_/  \/_/ 

-- -- Copy yanked text to System Clipboard
-- vim.opt.clipboard = "unnamedplus"
--
-- -- VimStartify Activation and ASCII file path
-- local config_file_path = vim.fn.expand('$HOME/.config/nvim/ascii.txt')
--
-- vim.g.startify_custom_header = vim.fn.filereadable(config_file_path) == 1
--   and vim.fn.readfile(config_file_path)
--   or { "Welcome to Neovim!" }
--
-- -- Activate Relative Line Number in every boot 
-- vim.o.relativenumber = true
--
-- -- Activate Cursor Line and Column
-- vim.o.cursorline = true
-- vim.o.cursorcolumn = true
