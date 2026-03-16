return {
	"CopilotC-Nvim/CopilotChat.nvim",
	dependencies = {
		{ "nvim-lua/plenary.nvim", branch = "master" },
	},

	build = "make tiktoken",

	opts = {
		window = {
			layout = 'vertical',
			position = 'right', -- 'left', 'right', 'top', 'bottom'
			width = 0.5,     -- Fixed width in columns
			border = 'rounded', -- 'single', 'double', 'rounded', 'solid'
			title = 'Copilot',
			zindex = 100,    -- Ensure window stays on top
		},

		headers = {
			user = 'You',
			assistant = 'Copilot',
			tool = 'Tool',
		},

		separator = '--',
		auto_fold = false,       -- Automatically folds non-assistant messages
		auto_insert_mode = true, -- Automatically enter insert mode when opening the chat
	},

	keys = {
		{ "<leader><leader>", ":CopilotChat ",  mode = "n", desc = "Ask Copilot" },
		{ "<leader><leader>", ":CopilotChat ",  mode = "v", desc = "Ask Copilot about selection" },
		{ "<leader>ze", ":CopilotChatExplain<CR>", mode = "v", desc = "Explain code" },
		{ "<leader>zr", ":CopilotChatReview<CR>",  mode = "v", desc = "Review code" },
		{ "<leader>zz", ":CopilotChatToggle<CR>", mode = "n", desc= "Toggle Copilot chat" },
	},

}
