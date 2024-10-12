return {
  {
    "nvim-treesitter/nvim-treesitter",
    ensure_installed = {
      "rust",
      "lua",
      "typescript",
      "javascript",
      "markdown",
      "markdown_inline",
      "vim",
      "vimdoc",
      "tsx",
      "css",
      "html",
    },
    auto_install = true,
    highlight = {
      enable = true,
    },
    indent = {
      enable = true,
    },
  },
}
