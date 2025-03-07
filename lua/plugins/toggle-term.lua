return {
	"akinsho/toggleterm.nvim",
	version = "*",
	config = function()
		require("toggleterm").setup()
		vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], {remap=true})
		vim.keymap.set("n", "T", ":ToggleTerm<CR>", {remap=true})
	end
}
