local opt = vim.opt

-- 行号
opt.relativenumber = true
opt.number = true

-- 缩进
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

-- 禁止自动换行
opt.wrap = false

-- 光标行
opt.cursorline = false

opt.clipboard:append("unnamedplus")

