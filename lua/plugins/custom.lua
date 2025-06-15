-- Contains configs for Custom Plugins

return {
    { "wakatime/vim-wakatime", lazy = false },
    { "preservim/tagbar", lazy = false },
    { "Pocco81/auto-save.nvim", lazy = false },
    { "andweeb/presence.nvim", lazy = false },
    { "mhinz/vim-startify", lazy=false},
    {
        "sidonthetroll/friendly-snippets-math",
        event = "BufReadPost",
        ft = "markdown",
    },
    { 
        "nvim-pack/nvim-spectre",
        live_update = true,
    }

}
