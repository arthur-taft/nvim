local mason_pses_path = vim.fn.stdpath("data") .. "/mason/packages/powershell-editor-services"

vim.lsp.config("powershell_es", {
    bundle_path = mason_pses_path,
    settings = {
        powershell = {
            codeFormatting = {
                Preset = "OTBS",
            },
        },
    },
})

vim.lsp.enable("lua_ls")
vim.lsp.enable("pyright")
vim.lsp.enable("ruff")
vim.lsp.enable("bashls")
vim.lsp.enable("html")
vim.lsp.enable("cssls")
vim.lsp.enable("powershell_es")
