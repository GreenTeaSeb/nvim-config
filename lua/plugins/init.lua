require('packer').startup(function()
    use 'wbthomason/packer.nvim'
    -- lsp
    use 'neovim/nvim-lspconfig'
    use 'onsails/lspkind-nvim'
    use 'williamboman/nvim-lsp-installer'
    use {"ray-x/lsp_signature.nvim"}
    use{'weilbith/nvim-code-action-menu', cmd='CodeActionMenu'}
    --  autocompletion
    use {'ms-jpq/coq_nvim', branch = 'coq'}
    use {'ms-jpq/coq.artifacts', branch = 'artifacts'}
    use {
      "folke/which-key.nvim",
      config = function()
	require("which-key").setup {
	}
      end
    }
    -- formatting
    use {'prettier/vim-prettier', run = 'yarn install'}
    use 'windwp/nvim-autopairs'
    use 'terrortylor/nvim-comment'
    use 'elkowar/yuck.vim'
    use 'cakebaker/scss-syntax.vim'
    use 'sbdchd/neoformat'
    use {'Kogia-sima/sailfish',  rtp= 'syntax/vim' }

    -- better highighting
    use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}

    -- files browsing
    use 'glepnir/dashboard-nvim'
    use {
	"sidebar-nvim/sidebar.nvim",
	config = function ()
	end
    }
    use {
        'nvim-telescope/telescope.nvim',
        requires = {
            {'nvim-lua/plenary.nvim'},

            {"nvim-telescope/telescope-fzf-native.nvim", run = "make"}, {
                "nvim-telescope/telescope-media-files.nvim"
            }

        }
    }
    use {
        'hoob3rt/lualine.nvim',
        requires = {'kyazdani42/nvim-web-devicons', opt = true}
    }

    use {'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons'}
    --languages
    use 'rust-lang/rust.vim'
    -- accessories
    use 'kyazdani42/nvim-web-devicons'
    use 'lukas-reineke/indent-blankline.nvim'
    use 'lambdalisue/suda.vim'
    -- color
    use 'tomasiser/vim-code-dark'
    use 'jam1garner/vim-code-monokai'
    use {'kaicataldo/material.vim', branch = 'main'}
    use 'dylanaraps/wal.vim'
    use 'norcalli/nvim-colorizer.lua'
    use'KabbAmine/vCoolor.vim'
    use 'vim-scripts/AnsiEsc.vim'
    use 'ntk148v/vim-horizon'
    use "projekt0n/github-nvim-theme"
end)

require("sidebar-nvim").setup({
    open = true,
    side = "left",
    sections = { "files", "datetime", "git" },
    section_separator = {"", "-----", ""},
    todos = { ignored_paths = { "~" } },
})

 require('plugins/configs')
