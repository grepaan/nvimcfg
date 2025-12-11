return {
  "oskarrrrrrr/symbols.nvim",
  config = function()
    local r = require("symbols.recipes")
    require("symbols").setup(
      r.DefaultFilters,
      r.AsciiSymbols,
      {
        sidebar = {
          open_direction = "right",
          auto_resize = {
            enable = true,
            max_width = 120,
            min_width = 30,
          },
        }
      }
    )
    vim.keymap.set("n", "<leader>s", "<cmd>Symbols<CR>")
    vim.keymap.set("n", "<leader>S", "<cmd>SymbolsClose<CR>")
  end
}
