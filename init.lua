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
vim.g.mapleader = "<Space>"
vim.g.maplocalleader = "\\"
vim.g.copilot_no_tab_map = true

vim.keymap.set('i', '<S-Tab>', 'copilot#Accept("\\<S-Tab>")', { expr = true, replace_keycodes = false })

 -- Scroll window one line at a time with Ctrl-j / Ctrl-k
vim.keymap.set("n", "<C-j>", "j<C-e>", { desc = "Scroll window down" })
vim.keymap.set("n", "<C-k>", "k<C-y>", { desc = "Scroll window up" })
 -- Standard save options
vim.keymap.set("n", "<C-s>",function () vim.cmd('w') end, { desc = "Save file" })
vim.keymap.set("n", "<C-s-a>",function () vim.cmd('wa') end, { desc = "Save all files" })
 -- Allow movement in insert mode 
vim.keymap.set('i', '<C-b>', '<Left>')
vim.keymap.set('i', '<C-l>', '<Right>')
vim.keymap.set('i', '<C-j>', '<Down>')
vim.keymap.set('i', '<C-k>', '<Up>')
 -- Exit neovim
-- vim.keymap.set('v', '<C-q>', function () vim.cmd('q') end, { desc = "Exit neovim" })

-- Setup lazy.nvim
require("vim-options")
require("lazy").setup("plugins")

