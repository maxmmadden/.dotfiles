-- return {}
return {
	"nvimtools/none-ls.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
				-- null_ls.builtins.formatting.isort,
				null_ls.builtins.formatting.black.with({
					extra_args = { "--line-length", "150" },
				}),

				null_ls.builtins.formatting.goimports,
				null_ls.builtins.formatting.gofmt,
				null_ls.builtins.formatting.golines,
			},
		})
	end,
}
