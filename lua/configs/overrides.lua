local M = {}

M.treesitter = {
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
}

M.mason = {
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
}

M.nvimtree = {
  git = {
    enable = true,
  },
  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

return M
