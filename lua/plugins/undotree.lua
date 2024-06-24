vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)

local path = os.getenv("HOME") .. "/.local/share/nvim/undodir"

vim.opt.undodir = path
vim.opt.undofile = true
