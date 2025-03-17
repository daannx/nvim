-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--vim.keymap.set("n", "<leader>rn", function() return ":IncRename " .. vim.fn.expand("<cword>") end, { expr = true })
vim.keymap.set('n', '<F5>', function() vim.cmd('%s/\\s\\+$//e') end, { noremap = true, silent = true })
vim.keymap.set('n', '<F6>', function() vim.cmd('set colorcolumn=0') end, { noremap = true, silent = true })
vim.keymap.set('n', '<F7>', function() vim.cmd('set colorcolumn=120') end, { noremap = true, silent = true })

