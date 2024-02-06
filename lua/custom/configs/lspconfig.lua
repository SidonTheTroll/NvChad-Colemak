local configs = require("plugins.configs.lspconfig")
local on_attach = configs.on_attach
local capabilities = configs.capabilities
local lspconfig = require "lspconfig"
local servers = { "html", "cssls", "clangd"}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

lspconfig.marksman.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  require"lspconfig".marksman,
  cmd = { "marksman", "server" },
  filetypes = { "markdown" },
  root_dir = lspconfig.util.root_pattern(".git", ".marksman.toml"),
  single_file_support = true
})
