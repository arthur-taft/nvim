return {
  { "nvim-lua/plenary.nvim" },
  {
    "nvim-telescope/telescope.nvim",
    opts = {
      defaults = { layout_config = { prompt_position = "top" }, sorting_strategy = "ascending" },
      pickers = { find_files = { hidden = true } },
    },
  },
}
