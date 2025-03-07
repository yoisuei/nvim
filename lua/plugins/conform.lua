return {
	"stevearc/conform.nvim",
	config = function()
		require("conform").setup({
			formatters_by_ft = {
				lua = { "stylua" },
				python = { "isort", "black" },
			},
		})
		vim.keymap.set("n", "<leader>fm", function()
			require("conform").format({ lsp_fallback = true })
		end, { desc = "general format file" })
	end,
}
