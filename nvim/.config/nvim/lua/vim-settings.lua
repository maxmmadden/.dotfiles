vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.mapleader = " "
vim.g.background = "light"

vim.opt.swapfile = false
vim.opt.relativenumber = true

vim.keymap.set('n', '<left>', '<Nop>' )
vim.keymap.set('n', '<right>', '<Nop>' )
vim.keymap.set('n', '<up>', '<Nop>' )
vim.keymap.set('n', '<down>', '<Nop>' )
-- Navigate vim panes better
vim.keymap.set('n', '<c-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<c-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<c-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<c-l>', ':wincmd l<CR>')

vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')
vim.wo.number = true

-- Obsidian Keymaps

vim.keymap.set("n", "<leader>on", ":ObsidianNew<CR>")
vim.keymap.set("n", "<leader>od", ":ObsidianDailies<CR>")
vim.keymap.set("n", "<leader>ow", ":ObsidianWorkspace<CR>")
