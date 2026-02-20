 -- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
vim.g.copilot_no_tab_map = true

vim.keymap.set('i', '<S-Tab>', 'copilot#Accept("\\<S-Tab>")', { expr = true, replace_keycodes = false })

 -- Scroll window one line at a time with Ctrl-j / Ctrl-k
vim.keymap.set("n", "<C-j>", "j<C-e>", { desc = "Scroll window down" })
vim.keymap.set("n", "<C-k>", "k<C-y>", { desc = "Scroll window up" })
 -- Standard save options
vim.keymap.set("n", "<C-s>",function () vim.cmd('w') end, { desc = "Save file" })
vim.keymap.set("n", "<C-s-a>",function () vim.cmd('wa') end, { desc = "Save all files" })
vim.keymap.set("n", "<leader>bd",function () vim.cmd('bd') end, { desc = "Close current buffer" })
 -- Allow movement in insert mode 
vim.keymap.set('i', '<C-b>', '<Left>')
vim.keymap.set('i', '<C-l>', '<Right>')
vim.keymap.set('i', '<C-j>', '<Down>')
vim.keymap.set('i', '<C-k>', '<Up>')
 -- Bufferline mappings
vim.keymap.set("n", "<leader>1", "<cmd>BufferLineGoToBuffer 1<cr>")
vim.keymap.set("n", "<leader>2", "<cmd>BufferLineGoToBuffer 2<cr>")
vim.keymap.set("n", "<leader>3", "<cmd>BufferLineGoToBuffer 3<cr>")
vim.keymap.set("n", "<leader>4", "<cmd>BufferLineGoToBuffer 4<cr>")
vim.keymap.set("n", "<leader>5", "<cmd>BufferLineGoToBuffer 5<cr>")
vim.keymap.set("n", "<leader>6", "<cmd>BufferLineGoToBuffer 6<cr>")
vim.keymap.set("n", "<leader>7", "<cmd>BufferLineGoToBuffer 7<cr>")
vim.keymap.set("n", "<leader>8", "<cmd>BufferLineGoToBuffer 8<cr>")
vim.keymap.set("n", "<leader>n", "<cmd>BufferLineCycleNext<cr>")
vim.keymap.set("n", "<leader>p", "<cmd>BufferLineCyclePrev<cr>")
 -- Exit neovim
 -- vim.keymap.set('v', '<C-q>', function () vim.cmd('q') end, { desc = "Exit neovim" })

 -- git diff options
-- vim.opt.diffopt:append("algorithm:histogram")
-- vim.opt.diffopt:append("indent-heuristic")
-- vim.opt.diffopt:append("linematch:60")
 --
-- Setup lazy.nvim
require("vim-options")
require("lazy").setup("plugins")

