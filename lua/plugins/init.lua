require('packer').startup(function()
    use 'wbthomason/packer.nvim'
    -- lsp
    use {
     'neovim/nvim-lspconfig',
     'onsails/lspkind-nvim',
     'williamboman/nvim-lsp-installer',
     "ray-x/lsp_signature.nvim",
    }
    use{
      'weilbith/nvim-code-action-menu',
      cmd = 'CodeActionMenu',
    }
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
    -- use "lukas-reineke/lsp-format.nvim"
    use {'Kogia-sima/sailfish',  rtp= 'syntax/vim' }

    -- better highighting
    use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}

    -- files browsing
    use {
	  "startup-nvim/startup.nvim",
	  requires = {"nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim"},
	  config = function()
	    require"startup".setup()
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
    use {
    'kyazdani42/nvim-tree.lua',
	requires = {
	    'kyazdani42/nvim-web-devicons', -- optional, for file icon
	 },
    config = function() require'nvim-tree'.setup {} end
    }
    --languages
    use 'rust-lang/rust.vim'
    -- accessories
    use 'kyazdani42/nvim-web-devicons'
    use 'lukas-reineke/indent-blankline.nvim'
    use 'lambdalisue/suda.vim'
    use {'rrethy/vim-hexokinase', run = 'cd ~/.local/share/nvim/site/pack/packer/start/vim-hexokinase && make hexokinase'}
    use {'karb94/neoscroll.nvim',
    	config = function()
	require('neoscroll').setup()	
	end
    }
	-- color
    use 'Mofiqul/vscode.nvim'
    use "projekt0n/github-nvim-theme"
end)
require('plugins/configs')
