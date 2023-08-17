local opt = vim.opt
opt.relativenumber = true
opt.number = true
opt.cursorline = true
opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true
opt.autoread = true
opt.backup = false
opt.belloff = "all"
opt.autowriteall = true
opt.backspace = "indent,eol,start"
opt.wrap = true
opt.mouse:append("a")
opt.clipboard:append("unnamedplus")
opt.splitright = true
opt.splitbelow = true
opt.hlsearch = true
opt.ignorecase = true
opt.smartcase = true
opt.termguicolors = true
opt.signcolumn = "yes"

vim.cmd([[colorscheme tokyonight-moon]])
