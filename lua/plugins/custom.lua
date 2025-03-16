-- Contains configs for Custom Plugins

return {
  { 'wakatime/vim-wakatime', lazy = false },
  { "preservim/tagbar", lazy = false },
  { "Pocco81/auto-save.nvim", lazy=false },
  { "mhinz/vim-startify", lazy=false},
  {
    "sidonthetroll/friendly-snippets-math",
    event = "BufReadPost",
    ft = "markdown",
  },
  { "andweeb/presence.nvim", lazy=false }
}
