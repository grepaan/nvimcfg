return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	dependencies = {
		"nvim-treesitter/nvim-treesitter-refactor",
	},
	config = function()
		local configs = require("nvim-treesitter.configs")
		configs.setup({
			ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "elixir", "heex", "javascript", "html", "go" },
			dync_install = false,
			highlight = { enable = true },
			indent = { enable = true },

			refactor = {
				highlight_definitions = { enable = true },
				highlight_current_scope = { enable = true },
			}
		})

		vim.keymap.set('n', '<C-n>', ':Neotree filesystem reveal left<CR>')

		-- Custom faded indigo scope highlight
		vim.api.nvim_set_hl(0, "TSCurrentScope", { bg = "#352f44" })
	end
}
