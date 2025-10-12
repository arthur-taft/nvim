return {
	-- Browser preview (unchanged)
	{ "iamcco/markdown-preview.nvim", build = "cd app && npm install", ft = { "markdown" } },

	-- Right-side Glow preview, lazy-loaded for Markdown buffers
	{
		"nvim-lua/plenary.nvim", -- just a safe carrier plugin
		ft = { "markdown" },
		config = function()
			-- Key: toggle right-side preview for the current markdown buffer
			vim.keymap.set("n", "<leader>mp", function()
				require("config.md_preview").toggle()
			end, { buffer = true, desc = "Markdown: preview (toggle right split)" })

			-- Command: :MarkdownPane
			vim.api.nvim_buf_create_user_command(0, "MarkdownPane", function()
				require("config.md_preview").toggle()
			end, {})

			-- OPTIONAL auto-open preview for *.md files.
			-- If you don't want auto-open, delete this block.
			vim.api.nvim_create_autocmd("BufReadPost", {
				buffer = 0, -- current markdown buffer only
				once = true, -- run once per buffer
				callback = function()
					-- comment this out if you prefer manual toggle only
					-- require("config.md_preview").toggle()
				end,
			})
		end,
	},
}
