local options = {
	wrap = false,
	tabstop = 4,
	shiftwidth = 4,
	number = true,
}

for k, v in pairs(options) do
	vim.opt[k] = v
end

vim.g.mapleader = " "
vim.g.maplocalleader = " "
