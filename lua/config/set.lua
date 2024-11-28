
-- Line numbering
vim.opt.nu = true
vim.opt.relativenumber = true

-- All things tabs
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- Enable smart indent
vim.opt.smartindent = true

-- Disable wrap
vim.opt.wrap = false

-- Unable an undofile
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- Upgrade search
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- Enable terminal colors
vim.opt.termguicolors = true

-- General visual
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.colorcolumn = "80"
