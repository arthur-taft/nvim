local remap = vim.keymap.set

remap("n", "<leader>fb", vim.cmd.Ex, { desc = "Open file browser" })

remap("n", "<leader>fe", "<Cmd>Neotree<CR>")

remap("n", "<leader>ms", "<Cmd>Markview splitToggle<CR>", { desc = "Toggle Markview split view" })

remap("n", "gd", vim.lsp.buf.definition, bufopts)
