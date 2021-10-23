require('packer').startup(function()
    use 'wbthomason/packer.nvim'

    -- lsp
    use 'neovim/nvim-lspconfig'
    use 'kabouzeid/nvim-lspinstall'
    use 'onsails/lspkind-nvim'
    use {"ray-x/lsp_signature.nvim"}
    use 'glepnir/lspsaga.nvim'

    --  autocompletion 

    use {'ms-jpq/coq_nvim', branch = 'coq'}
    use {'ms-jpq/coq.artifacts', branch = 'artifacts'}

    -- formatting
    use {'prettier/vim-prettier', run = 'yarn install'}
    use 'windwp/nvim-autopairs'
    use 'terrortylor/nvim-comment'
    use 'sbdchd/neoformat'

    -- better highighting 
    use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}

    -- files browsing
    use 'glepnir/dashboard-nvim'
    use {
        'nvim-telescope/telescope.nvim',
        requires = {
            {'nvim-lua/plenary.nvim'},

            {"nvim-telescope/telescope-fzf-native.nvim", run = "make"}, {
                "nvim-telescope/telescope-media-files.nvim"
            }

        }
    }
    use {'ms-jpq/chadtree', branch = 'chad', run = 'python3 -m chadtree deps'}

    use {
        'hoob3rt/lualine.nvim',
        requires = {'kyazdani42/nvim-web-devicons', opt = true}
    }

    use {'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons'}
    -- accessories
    use 'kyazdani42/nvim-web-devicons'
    use 'tomasiser/vim-code-dark'
    use 'morhetz/gruvbox'
    use 'tanvirtin/monokai.nvim'
    use {'kaicataldo/material.vim', branch = 'main'}
    use 'dylanaraps/wal.vim'

end)

require('plugins/configs')
