local map = vim.keymap.set

map("n", "<leader>q", "<cmd>q<cr>")
map("n", "<leader>w", "<cmd>w<cr>")

-- Files / search
map("n", "<leader>e", "<cmd>Oil<cr>", { desc = "File Explorer (oil)" })
map("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Find files" })
map("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", { desc = "Grep" })
map("n", "<leader>fb", "<cmd>Telescope buffers<cr>", { desc = "Buffers" })
map("n", "<leader>fh", "<cmd>Telescope help_tags<cr>", { desc = "Help" })

-- Git / terminal / diagnostics
map("n", "<leader>gg", "<cmd>LazyGit<cr>", { desc = "LazyGit" })
map("n", "<leader>tt", "<cmd>ToggleTerm<cr>", { desc = "Terminal" })
map("n", "<leader>xx", "<cmd>Trouble diagnostics toggle<cr>", { desc = "Diagnostics (Trouble)" })

-- LSP
map("n", "<leader>rn", vim.lsp.buf.rename, { desc = "LSP Rename" })
map({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, { desc = "LSP Code Action" })
map("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition" })
map("n", "K", vim.lsp.buf.hover, { desc = "Hover" })

-- Format
map("n", "<leader>lf", function()
	require("conform").format({ async = true })
end, { desc = "Format" })

-- QoL
map("n", "<leader>s", [[:%s/\s\+$//e<cr>]], { desc = "Strip trailing spaces" })

-- Neotree

-- Focus the sidebar (or open it if closed)
map("n", "<leader>nf", function()
	require("neo-tree.command").execute({ action = "focus", source = "filesystem", position = "left" })
end, { desc = "Neo-tree: focus sidebar" })

-- Reveal current file in the sidebar (and focus it)
map("n", "<leader>fE", "<cmd>Neotree reveal left<cr>", { desc = "Neo-tree: reveal current file" })
