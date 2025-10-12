return {
	{
		"MeanderingProgrammer/render-markdown.nvim",
		ft = { "markdown" },
		dependencies = {
			"nvim-treesitter/nvim-treesitter",
			"nvim-tree/nvim-web-devicons",
		},
		keys = {
			-- Open a right split showing the SAME buffer, render only in that right window
			{
				"<leader>mr",
				function()
					local cur = vim.api.nvim_get_current_buf()
					vim.cmd("vsplit")
					vim.cmd("wincmd l")
					vim.api.nvim_win_set_buf(0, cur)

					-- Optional: fix the width of the preview pane (comment out if not desired)
					-- vim.cmd("vertical resize 88")

					require("render-markdown").enable() -- enable only in the right window
				end,
				desc = "Markdown: open rendered view (right split)",
			},

			-- Disable rendering in the current window and close the split
			{
				"<leader>mR",
				function()
					require("render-markdown").disable()
					-- Close the right split if you're currently in it
					if #vim.api.nvim_list_wins() > 1 then
						vim.cmd("wincmd l | close")
					end
				end,
				desc = "Markdown: close rendered view",
			},

			-- Toggle inline rendering in the current window (no split)
			{
				"<leader>mi",
				function()
					vim.cmd("RenderMarkdown toggle") -- built-in toggle command
				end,
				desc = "Markdown: toggle inline render",
			},
		},
		opts = {
			-- Good starting defaults; tweak as you like
			heading = {
				enabled = true,
				sign = true,
				icons = { "▎", "▎", "▎", "▎", "▎", "▎" },
			},
			bullet = { enabled = true },
			checkbox = { enabled = true },
			code = { enabled = true, sign = true }, -- prettify fenced code blocks
			link = { enabled = true },
			table = { enabled = true },
		},
		config = function(_, opts)
			require("render-markdown").setup(opts)

			-- Nice conceal defaults for markdown buffers
			vim.api.nvim_create_autocmd("FileType", {
				pattern = { "markdown" },
				callback = function(ev)
					local win = vim.fn.bufwinid(ev.buf)
					if win ~= -1 then
						vim.api.nvim_win_set_option(win, "conceallevel", 2)
						vim.api.nvim_win_set_option(win, "concealcursor", "nc")
					end
				end,
			})
		end,
	},
}
