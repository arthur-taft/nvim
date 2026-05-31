local plugins = {
	'catppuccin/nvim',
	'hrsh7th/nvim-cmp',
	'L3MON4D3/LuaSnip',
	'saadparwaiz1/cmp_luasnip',
	'hrsh7th/cmp-path',
	'hrsh7th/cmp-buffer',
	'rafamadriz/friendly-snippets',
	'hrsh7th/cmp-nvim-lsp',
	'stevearc/conform.nvim',
	'gentoo/gentoo-syntax',
	'nvim-lua/plenary.nvim',
	'mason-org/mason.nvim',
	'neovim/nvim-lspconfig',
	'nvim-lualine/lualine.nvim',
	'nvim-tree/nvim-web-devicons',
	'OXY2DEV/markview.nvim',
	'nvim-neo-tree/neo-tree.nvim',
	'MunifTanjim/nui.nvim',
	'nvim-tree/nvim-web-devicons',
	'akinsho/toggleterm.nvim',
	'folke/trouble.nvim',
	'folke/todo-comments.nvim',
	'folke/which-key.nvim'
}

local formatted_plugins = vim.tbl_map(function(repo)
    return 'https://github.com/' .. repo
end, plugins)

vim.pack.add(formatted_plugins)
