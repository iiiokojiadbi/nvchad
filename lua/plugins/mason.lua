return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup {
        ensure_installed = {
          "stylua",
          "lua-language-server",
          "css-lsp",
          "html-lsp",
          "typescript-language-server",
          "prettier",
          "eslint_d",
          "rust_analyzer",
        },
        automatic_installation = true,
      }
    end,
  },
}
