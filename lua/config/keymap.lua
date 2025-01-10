----------------
-- Keymap.lua --
----------------

-- Shamelessly stolen from @theprimeagen
-- Github repo: https://github.com/ThePrimeagen/init.lua/tree/249f3b14cc517202c80c6babd0f9ec548351ec71/lua/theprimeagen

-- Set the <leader> key to space
vim.g.mapleader = " "

-- Navigate between windows by holding control and using h, j, k, and l
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")

-- Add vim file explorer shortcut
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Use 'J' and 'K' to move lines in visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Center the cursor after half page scroll
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Center any found items when using search
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Paste without overwriting the buffer
vim.keymap.set("x", "<leader>p", [["_dP]])

-- Copy to system clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- Delete without adding text to the buffer
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- Format the current buffer
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

-- Global search and replace shortcut
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
