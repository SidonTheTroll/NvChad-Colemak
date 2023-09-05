local plugins = {

  { "wakatime/vim-wakatime", lazy = false },
  { "mhinz/vim-startify", lazy = false },
  { "preservim/tagbar", lazy = false },
  { "andweeb/presence.nvim", lazy = false },

}

vim.g.startify_custom_header = vim.fn.readfile('/home/sidon/.config/nvim/ascii.txt')

return plugins
