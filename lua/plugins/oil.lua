require("oil").setup({
    view_options = {
        show_hidden = true
    },
    keymaps = {
        ["<C-v>"] = { "actions.select", opts = { vertical = true } },
        ["<C-x>"] = { "actions.select", opts = { horizontal = true } },
        ["q"] = { "actions.close", mode = "n" },
        ["<esc>"] = { "actions.close", mode = "n" },
    },
})

vim.keymap.set("n", "<leader>o", ":Oil --float<CR>")
