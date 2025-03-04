return {
	"fedepujol/move.nvim",
	config = function()
		require("move").setup()

		-- line
		vim.keymap.set("n", "<A-j>", ":MoveLine(1)<CR>")
		vim.keymap.set("n", "<A-k>", ":MoveLine(-1)<CR>")

		-- block
		vim.keymap.set("v", "<A-j>", ":MoveBlock(1)<CR>")
		vim.keymap.set("v", "<A-k>", ":MoveBlock(-1)<CR>")
	end,
}
