return {
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    dependencies = {
      { "nvim-lua/plenary.nvim", branch = "master" },
    },
    build = "make tiktoken",
    opts = {
      -- See Configuration section for options
    },
		keys = {
			{ "<leader>zc", ":CopilotChatToggle<CR>", mode="n", desc = "Toggle Copilot chat" },
			{ "<leader>ze", ":CopilotChatExplain<CR>", mode="v", desc = "Explain code" },
			{ "<leader>zr", ":CopilotChatReview<CR>", mode="v", desc = "Review code" },
		}
  },
}
