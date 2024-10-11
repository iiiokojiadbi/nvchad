local options = {
  ensure_installed = {
    "lua_ls",
    "ts_ls",
    "rust_analyzer",
  },
}

require("mason-lspconfig").setup(options)
