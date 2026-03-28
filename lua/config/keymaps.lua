local remap = vim.keymap.set
local tele_builtin = require('telescope.builtin')
local harpoon = require("harpoon")

remap("n", "<leader>ff", tele_builtin.find_files)
remap('n', '<leader>fg', tele_builtin.live_grep, { desc = 'Telescope live grep' })
remap('n', '<leader>fh', tele_builtin.help_tags, { desc = 'Telescope help tags' })

harpoon:setup()

remap("n", "<leader>ha", function() harpoon:list():add() end)
remap("n", "<leader>hh", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)
remap("n", "<leader>hn", function() harpoon:list():prev() end)
remap("n", "<leader>hp", function() harpoon:list():next() end)

-- remap("n", "<leader>fb", vim.cmd("Ex"))

remap("n", "<leader>fe", "<Cmd>Neotree<CR>")
