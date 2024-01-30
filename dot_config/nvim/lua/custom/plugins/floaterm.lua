return {
	'voldikss/vim-floaterm',
	config = function()
		vim.g.floaterm_width = 0.9
		vim.g.floaterm_height = 0.9
		vim.keymap.set('n', "<leader>tt", ":FloatermToggle <CR>", { desc = '[T]oggle [T]erminal' })
		vim.keymap.set('t', "<Esc>", "<C-\\><C-n>")
	end
}
