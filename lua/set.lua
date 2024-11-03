-- annoying stuff
vim.opt.swapfile = false
vim.opt.belloff = "all"
vim.opt.showmode = false

-- tabs
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

-- line numbers
vim.opt.nu = true
vim.opt.wrap = true
vim.opt.linebreak = true
vim.opt.scrolloff = 5

-- searching
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.incsearch = true
vim.opt.hlsearch = false

-- splits
vim.opt.splitbelow = true
vim.opt.splitright = true

-- looks
vim.opt.colorcolumn = "80"
vim.opt.guicursor = ""
vim.opt.conceallevel = 2
vim.opt.smoothscroll = true

-- folding with treesitter
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
vim.opt.foldlevel = 99
vim.opt.foldenable = true

-- no shada (permissions issue on ece machines)
vim.opt.shadafile = "NONE"

vim.opt.mouse = "a"
vim.opt.encoding = "utf-8"

vim.g.mapleader = " "

