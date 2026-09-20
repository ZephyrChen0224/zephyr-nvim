-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- 改esc为jk
vim.keymap.set("i", "jk", "<Esc>", { desc = "退出插入模式" })
vim.opt.timeoutlen = 200

-- 在插入模式下，使用 Ctrl + hjkl 移动光标
vim.keymap.set("i", "<C-h>", "<Left>", { desc = "插入模式向左移动" })
vim.keymap.set("i", "<C-j>", "<Down>", { desc = "插入模式向下移动" })
vim.keymap.set("i", "<C-k>", "<Up>", { desc = "插入模式向上移动" })
vim.keymap.set("i", "<C-l>", "<Right>", { desc = "插入模式向右移动" })

-- 在插入模式下，连按两个分号 ;; 自动跳到行尾并只保留一个分号
-- 这非常适合你手速快时，不想按 Ctrl+e 的习惯
vim.keymap.set("i", ";;", "<End>;")

-- 在普通模式下，按空格 + ; 直接在当前行尾加分号并退回普通模式
vim.keymap.set("n", "<leader>;", "A;<Esc>", { desc = "行尾添加分号" })
