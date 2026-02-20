return {
  "akinsho/bufferline.nvim",
  version = "*",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("bufferline").setup{
      options = {
        numbers = "none",
        diagnostics = "nvim_lsp",
        show_buffer_close_icons = true,
        show_close_icon = false,
        offsets = {{filetype = "NvimTree", text = "Explorer", padding = 1}},
      }
    }
  end
}
