return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	vim.keymap.set('n', '<leader>n', function ()
		vim.cmd('Neotree filesystem reveal left toggle')
	end, {noremap = true, silent = true})
}
