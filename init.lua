vim.g.mapleader = " "
vim.g.maplocalleader = " "

require("config.lazy")
require("config.options")
require("config.keymaps")
require("config.lsp")
require("lualine").setup()

-- colors after plugins
vim.cmd.colorscheme("catppuccin-mocha")
