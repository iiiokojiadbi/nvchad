return {
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    dependencies = {
      "b0o/schemastore.nvim",
    },
    config = function()
      require "configs.lspconfig"
    end,
  },
}
