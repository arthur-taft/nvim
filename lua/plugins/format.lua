return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        python = { "ruff_fix", "ruff_format", "black" },
        lua    = { "stylua" },
        sh     = { "shfmt" },
        bash   = { "shfmt" },
        markdown = { "prettier", "mdformat" },
        yaml   = { "prettier" },
        json   = { "prettier" },
        tex    = {}, -- optionally "latexindent"
      },
      notify_on_error = true,
    },
  },
  {
    "nvimtools/none-ls.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      local nls = require("null-ls")
      nls.setup({
        sources = {
          nls.builtins.diagnostics.shellcheck,
          nls.builtins.diagnostics.markdownlint,
        },
      })
    end,
  },
}
