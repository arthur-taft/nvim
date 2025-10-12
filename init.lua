vim.g.mapleader = " "
vim.g.maplocalleader = " "

require("config.options")
require("config.keymaps")
require("config.autocmds")

-- load lazy bootstrap here (NOT under lua/plugins/)
require("config.lazy")

-- colors after plugins
vim.cmd.colorscheme("catppuccin-mocha")
