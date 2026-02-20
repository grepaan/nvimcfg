return {
	{
		"nvim-telescope/telescope.nvim",
		tag = '0.1.5',
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			local builtin = require('telescope.builtin')

			-- Helper function to find all files
			local function find_all_files()
				builtin.find_files({
					find_command = { "fd",  "--hidden", "--no-ignore" }
				})
			end

			-- Keymaps
			vim.keymap.set('n', '<leader>ff', find_all_files, { desc = 'Telescope find files' })
			vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
			vim.keymap.set('n', '<leader>fF', builtin.grep_string, { desc = 'Telescope find string under cursor in workspace' })
			vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
			vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
			vim.keymap.set('n', '<leader>fs', builtin.lsp_document_symbols, { desc = 'Telescope find symbols in current file' })
			vim.keymap.set('n', '<leader>fS', builtin.lsp_workspace_symbols, { desc = 'Telescope find symbols in workspace' })
			vim.keymap.set("n", "<leader>gd", "<cmd>Telescope lsp_definitions<CR>")
      vim.keymap.set('n', '<leader>fr', builtin.oldfiles, { desc = 'Telescope recent files' })
		end
	},
	{
		'nvim-telescope/telescope-ui-select.nvim',
		config = function()
			require("telescope").setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown {
						}
					}
				}
			})
			require("telescope").load_extension("ui-select")
		end
	}
}
