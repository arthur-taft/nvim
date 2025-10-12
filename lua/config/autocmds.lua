-- Format on save (sync, safe fallback to LSP)
vim.api.nvim_create_autocmd("BufWritePre", {
  callback = function(args)
    require("conform").format({ bufnr = args.buf, async = false, lsp_fallback = true })
  end,
})
