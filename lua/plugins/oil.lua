require("oil").setup({
    view_options = {
        show_hidden = true
    },
    keymaps = {
        ["<C-v>"] = { "actions.select", opts = { vertical = true } },
        ["<C-x>"] = { "actions.select", opts = { horizontal = true } },
    },
})

vim.keymap.set("n", "<leader>o", ":Oil --float<CR>")
