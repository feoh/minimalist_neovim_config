require('lualine').setup{
	options = {
        	theme = "catppuccin-mocha"
	},
	sections = {
		lualine_b = { 'branch', 'diff' },
		lualine_c = {
			{
				'diagnostics',
				sources = { 'nvim_diagnostic' },
			},
			'filename',
		},
	}
}
