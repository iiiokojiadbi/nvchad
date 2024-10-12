return {
  {
    "stevearc/conform.nvim",
    opts = {},
    event = "BufWritePre",
    config = function()
      require("conform").setup {
        formatters_by_ft = {
          lua = { "stylua" },
          css = { "prettier" },
          html = { "prettier" },
          rust = { "rustfmt", lsp_format = "fallback" },
          javascript = { "prettier" },
          typescript = { "prettier" },
          javascriptreact = { "prettier" },
          typescriptreact = { "prettier" },
        },
        format_on_save = {
          -- These options will be passed to conform.format()
          timeout_ms = 500,
          lsp_fallback = true,
        },
      }
    end,
  },
}
