return {
	{
		"nvim-treesitter/nvim-treesitter-context",
		dependencies = { "nvim-treesitter/nvim-treesitter" },
		config = function()
			require("treesitter-context").setup({
				enable = true,        -- enable plugin
				max_lines = 1,        -- max lines to show at the top
				trim_scope = "outer", -- trim outer scope if too large
				patterns = {
					-- match patterns for different languages
					default = {
						"class",
						"function",
						"method",
						"for",
						"while",
						"if",
						"switch",
					},
					lua = { "function", "table" },
					python = { "class", "function" },
					c = { "function" },
					cpp = { "function" },
					java = { "class", "function" },
				},
				mode = "cursor", -- context follows cursor
				separator = nil, -- line between context and code, nil for none
			})
			-- Set faded background for context line
			vim.api.nvim_set_hl(0, "TreesitterContext", { bg = "#555555", fg = "NONE", underline = true })
		end,
	},
}
