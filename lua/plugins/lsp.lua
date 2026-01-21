return {
	{ "williamboman/mason.nvim", opts = {} },

	{
		"williamboman/mason-lspconfig.nvim",
		dependencies = { "williamboman/mason.nvim", "neovim/nvim-lspconfig" },
		opts = {
			ensure_installed = {
				"pyright",
				"ruff",
				"bashls",
				"lua_ls",
				"texlab",
				"dockerls",
				"yamlls",
				"marksman",
				"ts_ls",
				"html",
			},
			-- v2 can auto-enable; installation still happens via Mason
			automatic_enable = true,
		},
	},

	{
		"neovim/nvim-lspconfig",
		dependencies = { "hrsh7th/cmp-nvim-lsp" },
		config = function()
			local caps = require("cmp_nvim_lsp").default_capabilities()

			vim.diagnostic.config({
				virtual_text = { spacing = 2, prefix = "●" },
				float = { border = "rounded" },
				severity_sort = true,
			})

			local function on_attach(_, _) end

			vim.lsp.config("pyright", { capabilities = caps, on_attach = on_attach })
			vim.lsp.config(
				"ruff",
				{ capabilities = caps, on_attach = on_attach, init_options = { settings = { args = {} } } }
			)
			vim.lsp.config("bashls", { capabilities = caps, on_attach = on_attach })
			vim.lsp.config("lua_ls", {
				capabilities = caps,
				on_attach = on_attach,
				settings = {
					Lua = {
						diagnostics = { globals = { "vim" } },
						workspace = { checkThirdParty = false },
						format = { enable = false },
					},
				},
			})
			vim.lsp.config("texlab", { capabilities = caps, on_attach = on_attach })
			vim.lsp.config("dockerls", { capabilities = caps, on_attach = on_attach })
			vim.lsp.config("yamlls", { capabilities = caps, on_attach = on_attach })
			vim.lsp.config("marksman", { capabilities = caps, on_attach = on_attach })
			vim.lsp.config("ts_ls", { capabilities = caps, on_attach = on_attach })
			vim.lsp.config("html", { filetypes = { "html", "htm" }, capabilities = caps, on_attach = on_attach })
		end,
	},
}
