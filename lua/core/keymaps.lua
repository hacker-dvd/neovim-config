-- 设置 leader 键
vim.g.mapleader = " "

local keymap = vim.keymap

-- 插入模式
-- 按 "jk" 相当于按 <ESC>
keymap.set("i", "jk", "<ESC>")

-- 视觉模式
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- 取消高亮
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

vim.keymap.set('n', '<S-Tab>', '<Cmd>BufferLineCyclePrev<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<Tab>', '<Cmd>BufferLineCycleNext<CR>', { noremap = true, silent = true })
