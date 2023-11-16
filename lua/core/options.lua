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

-- 系统剪切板支持
opt.clipboard:append("unnamedplus")

-- 默认新窗口右和下
opt.splitright = true
opt.splitbelow = true

-- 搜索
-- 忽略大小写
opt.ignorecase = true
-- 智能判断，当输入的全是小写字母，大小写不敏感，当输入有大写字母时，大小写敏感
opt.smartcase = true

-- 启用真彩色
opt.termguicolors = true
opt.signcolumn = "yes"

