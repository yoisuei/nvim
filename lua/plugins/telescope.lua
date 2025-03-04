return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.8",
	dependencies = { "nvim-lua/plenary.nvim" },

	config = function()
		require("telescope").setup({
			pickers = {
				colorscheme = { enable_preview = true },
			},
		})
		vim.keymap.set("n", "<leader>ff", ":Telescope find_files<CR>")
		vim.keymap.set("n", "<leader>cs", ":Telescope colorscheme<CR>")

	end,
}
