local status_ok, lspconfig = pcall(require, "lspconfig")
if not status_ok then
  vim.notify("lspconfig plugin not found!")
  return
end

require("mason").setup()
require("mason-lspconfig").setup()
require("user.lsp.handlers").setup()

lspconfig["clojure_lsp"] .setup ({
    on_attach = require("user.lsp.handlers").on_attach,
    capabilities = require("user.lsp.handlers").capabilities,
})

