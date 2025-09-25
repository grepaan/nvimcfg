return {
	"CopilotC-Nvim/CopilotChat.nvim",
	dependencies = {
		{ "nvim-lua/plenary.nvim", branch = "master" },
	},

	build = "make tiktoken",

	opts = {
		window = {
			layout = 'vertical',
			width = 0.3,          -- Fixed width in columns
			height = 20,          -- Fixed height in rows
			border = 'rounded',   -- 'single', 'double', 'rounded', 'solid'
			title = 'Copilot',
			zindex = 100,         -- Ensure window stays on top
			auto_insert_mode = true, -- Automatically enter insert mode when opening the chat
		},

		headers = {
			user = 'You',
			assistant = 'Copilot',
			tool = 'Tool',
		},

		separator = '--',
		auto_fold = true, -- Automatically folds non-assistant messages
	},

	keys = {
		{ "<leader>zc", ":CopilotChatToggle<CR>",  mode = "n", desc = "Toggle Copilot chat" },
		{ "<leader>ze", ":CopilotChatExplain<CR>", mode = "v", desc = "Explain code" },
		{ "<leader>zr", ":CopilotChatReview<CR>",  mode = "v", desc = "Review code" },
	},

}
