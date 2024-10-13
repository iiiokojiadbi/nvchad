return {
  {
    "stevearc/conform.nvim",
    lazy = false,
    event = "BufWritePre",
    config = function()
      require "configs.conform"
    end,
  },
}
