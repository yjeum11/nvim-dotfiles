local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    { "nvim-treesitter/nvim-treesitter",
        build = function()
            vim.cmd(":TSUpdate")
        end,
        branch = "main",
    },

    { "rose-pine/neovim", name = "rose-pine" },

    "mbbill/undotree",
    { "junegunn/fzf", build =
    function()
        vim.fn["fzf#install"]()
    end },
    "junegunn/fzf.vim",

    {'williamboman/mason.nvim'},

    { 'nvim-lualine/lualine.nvim', dependencies = { 'nvim-tree/nvim-web-devicons' },

    "roxma/vim-tmux-clipboard",
    "christoomey/vim-tmux-navigator",
    "numToStr/Comment.nvim",

    {"stevearc/oil.nvim"},

    "tpope/vim-surround",
    {
        'folke/todo-comments.nvim',
        dependencies = { "nvim-lua/plenary.nvim" },
        opts = {},
    },
    "neovim/nvim-lspconfig",
    "folke/which-key.nvim",
}
})

require("plugins.treesitter")
require("plugins.colors")
require("plugins.undotree")
require("plugins.fzf")
require("plugins.lsp")
require("plugins.lualine")
require("plugins.comment")
require("plugins.vimtex")
-- require("plugins.lean")
require("plugins.oil")

