local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

require "gaur_abhi524.lsp.mason"
require("gaur_abhi524.lsp.handlers").setup()
require "gaur_abhi524.lsp.null-ls"
