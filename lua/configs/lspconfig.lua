-- NvChad defaults
require("nvchad.configs.lspconfig").defaults()

local nvlsp = require("nvchad.configs.lspconfig")

-- Basic servers
local servers = { "html", "cssls" }

for _, server in ipairs(servers) do
    vim.lsp.config(server, {
        on_attach = nvlsp.on_attach,
        on_init = nvlsp.on_init,
        capabilities = nvlsp.capabilities,
    })
    end

    vim.lsp.enable(servers)

    -- Diagnostics (IMPORTANT for "show corrections")
    vim.diagnostic.config({
        virtual_text = true,
        signs = true,
        underline = true,
        update_in_insert = false,
    })

    -- Harper (spell + grammar)
    local dict_file = vim.fn.expand("~/.config/nvim/dict/dictionary.txt")

    vim.lsp.config("harper_ls", {
        on_attach = nvlsp.on_attach,
        on_init = nvlsp.on_init,
        capabilities = nvlsp.capabilities,

        filetypes = { "markdown", "text", "html" },

        settings = {
            ["harper-ls"] = {
                userDictPath = dict_file,
                checkText = true,
                checkGrammar = true,
                checkSpelling = true,
            },
        },
    })

    vim.lsp.enable("harper_ls")

    -- Python LSP (pylsp) config
    -- lspconfig.pylsp.setup {
    --   on_attach = function(client, bufnr)
    --     require'cmp'.setup.buffer {
    --       sources = {
    --         { name = 'nvim_lsp' },
    --       }
    --     }
    --   end,
    --   settings = {
    --     pylsp = {
    --       plugins = {
    --         jedi_completion = { enabled = true },
    --         jedi_hover = { enabled = true },
    --         jedi_signature_help = { enabled = true },
    --         pyflakes = { enabled = true },
    --         pyright = { enabled = true },
    --         pycodestyle = {
    --           enabled = true,
    --           ignore = { "E501" },
    --         },
    --       },
    --     },
    --   },
    -- }
