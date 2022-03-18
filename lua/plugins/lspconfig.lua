local servers = { 'pyright', 'hls', 'clangd' }
for _, lsp in pairs(servers) do
  require('lspconfig')[lsp].setup {
    on_attach = require'lsp-keymaps',
    flags = {
      -- This will be the default in neovim 0.7+
      debounce_text_changes = 150,
    }
  }
end

