-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.4',
        -- or                            , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    -- Utility
    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
    use "akinsho/toggleterm.nvim" -- Terminal within Vim
    use "tpope/vim-surround"      -- Add/Replace/Remove surround tags
    use {
        "numToStr/Comment.nvim",  -- Auto-comment
        config = function()
            require("Comment").setup()
        end
    }

    -- LSP
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        requires = {
            -- LSP Support
            { 'williamboman/mason.nvim' },
            { 'neovim/nvim-lspconfig' },
            { 'williamboman/mason-lspconfig.nvim' },

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-buffer' },
            { 'hrsh7th/cmp-path' },
            { 'saadparwaiz1/cmp_luasnip' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'hrsh7th/cmp-nvim-lua' },

            -- Snippets
            { 'L3MON4D3/LuaSnip' },
            { 'rafamadriz/friendly-snippets' },
        }
    }

    -- Language Plugins
    use 'pangloss/vim-javascript'    -- JS support
    use 'leafgarland/typescript-vim' -- TS support
    use 'maxmellon/vim-jsx-pretty'   -- JS and JSX syntax
    use 'jparise/vim-graphql'        -- GraphQL syntax
end)
