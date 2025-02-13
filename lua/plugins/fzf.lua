vim.api.nvim_create_user_command("GGrep", "call fzf#vim#grep('git grep --line-number -- '.fzf#shellescape(<q-args>), fzf#vim#with_preview({'dir': systemlist('git rev-parse --show-toplevel')[0]}), <bang>0)", {})

vim.keymap.set("n", "<leader>ff", ":Files<CR>")
vim.keymap.set("n", "<leader>fg", ":GitFiles<CR>")
vim.keymap.set("n", "<leader>fb", ":Buffers<CR>")
vim.keymap.set("n", "<leader>fG", ":GGrep<CR>")

