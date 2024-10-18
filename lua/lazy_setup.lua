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
    { "nvim-treesitter/nvim-treesitter", build =
    function()
        vim.cmd(":TSUpdate")
    end },

    { "catppuccin/nvim", name = "catppuccin", priority = 1000 },

    "mbbill/undotree",
    { "junegunn/fzf", build =
    function()
        vim.fn["fzf#install"]()
    end },
    "junegunn/fzf.vim",

    {'williamboman/mason.nvim'},
    {'williamboman/mason-lspconfig.nvim'},

    {'neovim/nvim-lspconfig'},

    {"https://git.sr.ht/~whynothugo/lsp_lines.nvim"},

    {'SirVer/ultisnips'},
    {'quangnguyen30192/cmp-nvim-ultisnips'},
    {'hrsh7th/cmp-nvim-lsp'},
    {'hrsh7th/nvim-cmp'},
    {'hrsh7th/cmp-buffer'},
    {'hrsh7th/cmp-path'},

    {'PhilRunninger/cmp-rpncalc'},

    { 'nvim-lualine/lualine.nvim', dependencies = { 'nvim-tree/nvim-web-devicons' },

    "roxma/vim-tmux-clipboard",
    "christoomey/vim-tmux-navigator",
    "numToStr/Comment.nvim",

    { "lervag/vimtex", lazy = false },

    {"stevearc/oil.nvim"},

    -- Lean
    {
        'Julian/lean.nvim',
        event = { 'BufReadPre *.lean', 'BufNewFile *.lean' },

        dependencies = {
            'neovim/nvim-lspconfig',
            'nvim-lua/plenary.nvim',
            'nvim-telescope/telescope.nvim'
            -- you also will likely want nvim-cmp or some completion engine
        },

        -- see details below for full configuration options
        opts = {
            lsp = {},
            mappings = true,
        }
    },
    "tpope/vim-surround",
    {
        "folke/which-key.nvim",
        event = "VeryLazy",
        opts = {
            -- your configuration comes here
            -- or leave it empty to use the default settings
            -- refer to the configuration section below
        },
        keys = {
            {
                "<leader>?",
                function()
                    require("which-key").show({ global = false })
                end,
                desc = "Buffer Local Keymaps (which-key)",
            },
        },
    }

}
})

require("plugins.treesitter")
require("plugins.gruvbox")
require("plugins.undotree")
require("plugins.fzf")
require("plugins.lsp")
require("plugins.lualine")
require("plugins.comment")
require("plugins.vimtex")
require("plugins.lean")
require("plugins.oil")

