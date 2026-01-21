return {
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
			"MunifTanjim/nui.nvim",
		},
		cmd = { "Neotree" },
		keys = {
			{ "<leader>fe", "<cmd>Neotree toggle left<cr>", desc = "Files (toggle sidebar)" },
			{ "<leader>fE", "<cmd>Neotree reveal left<cr>", desc = "Files (reveal current)" },
			{ "<leader>fgs", "<cmd>Neotree float git_status<cr>", desc = "Git status (float)" },
		},
		opts = {
			close_if_last_window = true,
			popup_border_style = "rounded",
			enable_git_status = true,
			enable_diagnostics = false,
			default_component_configs = {
				indent = { padding = 1 },
				name = { use_git_status_colors = true },
				git_status = {
					symbols = { unstaged = "●", staged = "✓", untracked = "★", renamed = "➡", deleted = "✖" },
				},
			},
			filesystem = {
				filtered_items = {
					hide_dotfiles = false,
					hide_gitignored = true,
				},
				follow_current_file = { enabled = true },
				hijack_netrw_behavior = "open_default",
				use_libuv_file_watcher = true,
			},
			window = {
				width = 34,
				mappings = {
					["<space>"] = "none",
					["l"] = "open",
					["h"] = "close_node",
					["o"] = "open",
					["<cr>"] = "open_with_window_picker",
					["s"] = "open_split",
					["v"] = "open_vsplit",
					["C"] = "close_all_nodes",
					["R"] = "refresh",
					["a"] = { "add", config = { show_path = "relative" } },
					["d"] = "delete",
					["r"] = "rename",
					["y"] = "copy_to_clipboard",
					["x"] = "cut_to_clipboard",
					["p"] = "paste_from_clipboard",
				},
			},
			source_selector = { winbar = true, statusline = false }, -- nice tabs for Files/Git/Buffers
		},
		init = function()
			-- Optional: open the sidebar when you start in a directory or no file
			if vim.fn.argc() == 0 then
				vim.api.nvim_create_autocmd("VimEnter", {
					once = true,
					callback = function()
						vim.cmd("Neotree show left")
					end,
				})
			end
		end,
	},
}
