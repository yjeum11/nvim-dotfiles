vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)

local path = os.getenv("HOME") .. "/.local/state/nvim/undo"

vim.opt.undodir = path
vim.opt.undofile = true
