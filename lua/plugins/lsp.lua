return {
  {
    "neovim/nvim-lspconfig",
    config = function()
      local configs = require "nvchad.configs.lspconfig"
      local lspconfig = require "lspconfig"

      local on_attach = configs.on_attach
      local on_init = configs.on_init
      local capabilities = configs.capabilities

      local servers = {
        "rust_analyzer",
        "html",
        "cssls",
        "ts_ls",
      }

      -- lsps with default config
      for _, lsp in ipairs(servers) do
        lspconfig[lsp].setup {
          on_attach = on_attach,
          capabilities = capabilities,
        }
      end

      -- configuring single server, example: typescript
      -- lspconfig.ts_ls.setup {
      --   on_attach = nvlsp.on_attach,
      --   on_init = nvlsp.on_init,
      --   capabilities = nvlsp.capabilities,
      -- }
    end,
  },
}
