return {
	"jose-elias-alvarez/null-ls.nvim",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local null_ls = require("null-ls")

		null_ls.setup({
			sources = {
				null_ls.builtins.diagnostics.eslint_d.with({
					filter = function(diagnostic)
						-- eslint_d will try to run eslint on folders that don't have eslint set up.
						-- This line ignores the error that comes from those runs.
						-- Sadly I didn't find a way yet to not load eslint_d at all there, and handle
						-- monorepos correctly at the same time
						return not string.find(diagnostic.message, "No ESLint configuration found in")
					end
				}),
				null_ls.builtins.formatting.prettierd,
			}
		})
	end,
}
