return {
	'romgrk/barbar.nvim',
	dependencies = {
		'lewis6991/gitsigns.nvim',
		'nvim-tree/nvim-web-devicons',
	},
	init = function() vim.g.barbar_auto_setup = false end,
	config = function()
		require('barbar').setup({
			animation = true,
		})
		vim.keymap.set("n", "<M-h>", "<cmd>BufferPrevious <CR>")
		vim.keymap.set("n", "<M-l>", "<cmd>BufferNext <CR>")
		vim.keymap.set("n", "<leader>bc", "<cmd>BufferClose <CR>", { desc = "[B]uffer [C]lose" })
		vim.keymap.set("n", "<leader>bp", "<cmd>BufferPin <CR>", { desc = "[B]uffer [P]in" })
	end
}
