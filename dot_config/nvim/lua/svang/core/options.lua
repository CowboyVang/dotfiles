vim.cmd("let g:netrw_liststyle = 3")

local opt = vim.opt

opt.relativenumber = true
opt.number = true


-- tab & indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true


opt.wrap = false

-- search settings
opt.ignorecase = true
opt.smartcase = true

opt.cursorline = true


-- color options
opt.termguicolors = true
opt.signcolumn = "yes"

-- backspace options
opt.backspace = "indent,eol,start"

-- clipboard
opt.clipboard:append("unnamedplus") --use system clipboard as cefault register(


-- split windows
opt.splitright = true
opt.splitbelow = true
