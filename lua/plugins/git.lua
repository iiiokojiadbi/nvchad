return {
  { "tpope/vim-fugitive", lazy = false },
  { "rbong/vim-flog", lazy = false, dependencies = {
    "tpope/vim-fugitive",
  } },
  { "sindrets/diffview.nvim", lazy = false },
}
