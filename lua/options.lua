require "nvchad.options"

-- Copy yanked text to System Clipboard
vim.opt.clipboard = "unnamedplus"

-- VimStartify Activation and ASCII file path
local config_file_path = vim.fn.expand('$HOME/.config/nvim/ascii.txt')

vim.g.startify_custom_header = vim.fn.filereadable(config_file_path) == 1
  and vim.fn.readfile(config_file_path)
  or { "Welcome to Neovim!" }

-- Activate Relative Line Number in every boot 
vim.o.relativenumber = true

-- Activate Cursor Line and Column
vim.o.cursorlineopt ='both'
vim.o.cursorcolumn = true

-- Use Fish in place of default shell 
vim.opt.shell="/usr/bin/fish"
