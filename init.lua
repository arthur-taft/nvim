vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.g.syntastic_ebuild_checkers = 'pkgcheck'

require("config.options")
require("config.keymaps")
require("config.autocmds")

-- load lazy bootstrap here (NOT under lua/plugins/)
require("config.lazy")

-- colors after plugins
vim.cmd.colorscheme("catppuccin-mocha")
