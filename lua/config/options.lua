local opt = vim.opt

opt.tabstop = 4
opt.shiftwidth = 4
opt.softtabstop = 4
opt.expandtab = true
opt.number = true
opt.relativenumber = true
opt.fillchars = { eob = " " }
vim.wo.signcolumn = "yes"

vim.diagnostic.config({
    virtual_text = {
        prefix = "●",
        source = false,
    },
    signs = true,
    update_in_insert = false,
}) 

opt.foldmethod = "expr"
opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
opt.foldtext = "v:lua.vim.treesitter.foldtext()"

opt.foldlevel = 99
opt.foldlevelstart = 99
opt.foldenable = true

opt.clipboard = "unnamedplus"
