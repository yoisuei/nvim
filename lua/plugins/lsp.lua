return {
    {
        "williamboman/mason.nvim",
        config = function()
         	require("mason").setup()
         end,
    },
    {
        "neovim/nvim-lspconfig",
		dependencies = { 'saghen/blink.cmp' },
        lazy = false,
        config = function()
            local lspconfig = require("lspconfig")
			local capabilities = require('blink.cmp').get_lsp_capabilities()

            -- lua
            lspconfig.lua_ls.setup({
                capabilities = capabilities,
                settings = {
                    Lua = {
                        diagnostics = {
                            globals = { "vim" },
                        },
                        workspace = {
                            library = vim.api.nvim_get_runtime_file("", true),
                            checkThirdParty = false,
                        },
                        telemetry = {
                            enable = false,
                        },
                    },
                },
            })

			-- python
			lspconfig.pyright.setup({ capabilities = capabilities})
        end,
    },
}
