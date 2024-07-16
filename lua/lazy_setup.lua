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
    { "ellisonleao/gruvbox.nvim", priority = 1000 , config = true },
    "mbbill/undotree",
    { "junegunn/fzf", build = 
    function()
        vim.fn["fzf#install"]()
    end },
    "junegunn/fzf.vim",
    -- LSP Zero
    --- Uncomment the two plugins below if you want to manage the language servers from neovim
    -- {'williamboman/mason.nvim'},
    -- {'williamboman/mason-lspconfig.nvim'},

    {'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
    {'neovim/nvim-lspconfig'},
    {'hrsh7th/cmp-nvim-lsp'},
    {'hrsh7th/nvim-cmp'},
    {'hrsh7th/cmp-buffer'},
    {'L3MON4D3/LuaSnip'},

    { 'nvim-lualine/lualine.nvim', dependencies = { 'nvim-tree/nvim-web-devicons' },

    "roxma/vim-tmux-clipboard",
    "christoomey/vim-tmux-navigator",
    "numToStr/Comment.nvim",

    { "lervag/vimtex", lazy = false }

}
})

require("plugins.treesitter")
require("plugins.gruvbox")
require("plugins.undotree")
require("plugins.fzf")
require("plugins.lspzero")
require("plugins.lualine")
require("plugins.comment")
require("plugins.vimtex")

