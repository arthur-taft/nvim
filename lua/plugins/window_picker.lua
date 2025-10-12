return {
	{
		"s1n7ax/nvim-window-picker",
		name = "window-picker",
		version = "2.*",
		event = "VeryLazy",
		opts = {
			autoselect_one = true,
			include_current = false,
			filter_rules = {
				bo = {
					filetype = { "neo-tree", "neo-tree-popup", "notify", "quickfix" },
					buftype = { "terminal" },
				},
			},
			-- remove the `highlights = ...` block entirely
		},
	},
}
