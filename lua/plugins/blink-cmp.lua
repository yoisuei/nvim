return {
	"saghen/blink.cmp",
	dependencies = { "rafamadriz/friendly-snippets" },
	version = "*",
	opts = {
		keymap = {
			preset = "enter",
			["<Up>"] = { "select_prev", "fallback" },
			["<Down>"] = { "select_next", "fallback" },
			["<CR>"] = { "select_and_accept", "fallback" },
		},

		cmdline = {
			keymap = {
				["<Tab>"] = { "accept" },
				["<CR>"] = { "accept_and_enter", "fallback" },
			},
			completion = { menu = { auto_show = true } },
		},

		completion = {
			keyword = { range = "full" },
			list = {
				selection = {
					auto_insert = true,
					preselect = true,
				},
			},
			menu = { auto_show = true, border = "rounded" },
			documentation = { auto_show = true, auto_show_delay_ms = 500, window = { border = "rounded" } },
			ghost_text = { enabled = true },
		},

		appearance = {
			use_nvim_cmp_as_default = true,
			nerd_font_variant = "mono",
		},

		sources = {
			default = { "lsp", "path", "snippets", "buffer" },
		},

		fuzzy = { implementation = "prefer_rust_with_warning" },

		snippets = { preset = "default" },
	},

	opts_extend = { "sources.default" },
}
