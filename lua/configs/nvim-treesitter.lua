local options = {
  ensure_installed = {
    "rust",
    "lua",
    "typescript",
    "javascript",
    "markdown",
    "markdown_inline",
    "vim",
    "vimdoc",
  },
  auto_install = true,
  highlight = {
    enable = true,
  },
}

require("nvim-treesitter.configs").setup(options)
