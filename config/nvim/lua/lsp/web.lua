-- Enable (broadcasting) snippet capability for completion
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

-- HTML
require'lspconfig'.html.setup{
  capabilities = capabilities,
}

-- CSS
require'lspconfig'.cssls.setup {
  capabilities = capabilities,
}

-- JSON
require'lspconfig'.jsonls.setup {
  capabilities = capabilities,
}

-- Vuejs
require'lspconfig'.vuels.setup{}

-- Angular js
require'lspconfig'.angularls.setup{}

-- JS & TS
require'lspconfig'.denols.setup{}

-- Emmet
require'lspconfig'.emmet_ls.setup{}
