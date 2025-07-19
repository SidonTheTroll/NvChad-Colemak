-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"
local nvlsp = require "nvchad.configs.lspconfig"

-- Example LSPs with default config
local servers = { "html", "cssls" }
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  }
end

-- Python LSP (pylsp) config
lspconfig.pylsp.setup {
  on_attach = function(client, bufnr)
    require'cmp'.setup.buffer {
      sources = {
        { name = 'nvim_lsp' },
      }
    }
  end,
  settings = {
    pylsp = {
      plugins = {
        jedi_completion = { enabled = true },
        jedi_hover = { enabled = true },
        jedi_signature_help = { enabled = true },
        pyflakes = { enabled = true },
        pyright = { enabled = true },
        pycodestyle = {
          enabled = true,
          ignore = { "E501" },
        },
      },
    },
  },
}

-- C LSP (clangd) config
lspconfig.clangd.setup {
  cmd = { "clangd", "--background-index", "--clang-tidy" },
  on_attach = nvlsp.on_attach,
  on_init = nvlsp.on_init,
  capabilities = nvlsp.capabilities,
}

-- LTEX Spellcheck LSP config
local uv = vim.loop
local dict_dir = vim.fn.expand("~/.config/nvim/dict")

local function read_words(dir)
  local words = {}
  local handle = uv.fs_scandir(dir)
  if not handle then return words end
  while true do
    local name = uv.fs_scandir_next(handle)
    if not name then break end
    local f = io.open(dir .. "/" .. name, "r")
    if f then
      for line in f:lines() do
        if line ~= "" then table.insert(words, line) end
      end
      f:close()
    end
  end
  return words
end

local custom_words = read_words(dict_dir)

require('lspconfig').ltex.setup {
  on_attach = nvlsp.on_attach,
  on_init = nvlsp.on_init,
  capabilities = nvlsp.capabilities,
  settings = {
    ltex = {
      language = "en-US",
      enabled = { "markdown", "text", "latex" },
      dictionary = { ["en-US"] = custom_words },
    },
  },
  filetypes = { "markdown", "text", "latex" },
}

