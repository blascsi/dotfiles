return {
	{
		'echasnovski/mini.pairs',
		version = '*',
		event = "VeryLazy",
		config = function()
			require('mini.pairs').setup()
		end
	},
	{
		'echasnovski/mini.indentscope',
		version = '*',
		event = "VeryLazy",
		config = function()
			require('mini.indentscope').setup()
		end
	},
	{
		'echasnovski/mini.surround',
		version = '*',
		event = "VeryLazy",
		config = function()
			require('mini.surround').setup()
		end
	}
}
