-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"

-- EXAMPLE
local servers = { "html", "cssls" }
local nvlsp = require "nvchad.configs.lspconfig"

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  }
end

-- configuring single server, example: typescript
-- lspconfig.ts_ls.setup {
--   on_attach = nvlsp.on_attach,
--   on_init = nvlsp.on_init,
--   capabilities = nvlsp.capabilities,
-- }
-- ===========================================================

--Config for "python-lsp-server"
local lspconfig = require "lspconfig"

-- Configure Python LSP (pylsp)
lspconfig.pylsp.setup {
  on_attach = function(client, bufnr)
    -- Enable nvim-cmp completion on LSP attach
    require'cmp'.setup.buffer {
      sources = {
        { name = 'nvim_lsp' },  -- nvim_lsp source to get completions from LSP
      }
    }
  end,
  settings = {
    pylsp = {
      plugins = {
        jedi_completion = { enabled = true },  -- Enable Jedi completions
        jedi_hover = { enabled = true },
        jedi_signature_help = { enabled = true },
        pyflakes = { enabled = true },
        pyright = { enabled = true },  -- Ensure pyright is enabled for better completion
        pycodestyle = {
          enabled = true,
          ignore = { "E501" }, -- ignore long code lines
        },
      },
    },
  },
}

-- Configure C LSP (clangd)
lspconfig.clangd.setup {
    cmd = {"clangd","--background-index","--clang-tidy"},
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
}

-- Spellcheck Server 
require('lspconfig').ltex.setup {
  settings = {
    ltex = {
      language = "en-US",
      enabled = { "markdown", "text", "latex" },
    },
  },
  filetypes = { "markdown", "text", "latex" },
}

