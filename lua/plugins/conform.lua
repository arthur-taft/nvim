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
            },
            notify_on_error = true,
        },
    }
}
