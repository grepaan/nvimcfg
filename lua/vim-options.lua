vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set expandtab")
vim.cmd("set smartindent")
vim.cmd("se number")
vim.cmd("set relativenumber")
vim.cmd("set ignorecase")
vim.g.mapleader = " "

-- Something to make pasting work
vim.opt.clipboard = "unnamedplus"
-- Set split to open to the right and below
vim.opt.splitright = true
