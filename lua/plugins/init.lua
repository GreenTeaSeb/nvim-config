require('packer').startup(function()
    use 'wbthomason/packer.nvim'

    -- lsp
    use 'neovim/nvim-lspconfig'
    use 'onsails/lspkind-nvim'
    use 'kabouzeid/nvim-lspinstall'
    use 'glepnir/lspsaga.nvim'
    use {
  "ray-x/lsp_signature.nvim",
}
    -- formatting
    use {'prettier/vim-prettier', run = 'yarn install'}

    --  autocompletion 
    use {'ms-jpq/coq_nvim', branch = 'coq'}
    use {'ms-jpq/coq.artifacts', branch = 'artifacts'}

    -- better highighting 
    use {'nvim-treesitter/nvim-treesitter', run=':TSUpdate'}

    -- utilities
    use {
      "Nvchad/extensions",
   }

    use {
      "norcalli/nvim-colorizer.lua",
      event = "BufRead",
   }

    
    -- accessories
    use 'glepnir/dashboard-nvim'
    use 'windwp/nvim-autopairs'
    use 'kyazdani42/nvim-web-devicons'
    use 'tomasiser/vim-code-dark'
    use 'morhetz/gruvbox'
    use {
	'kaicataldo/material.vim',
	branch = 'main'
    }
    use 'dylanaraps/wal.vim'
    use {
        'hoob3rt/lualine.nvim',
        requires = {'kyazdani42/nvim-web-devicons', opt = true}
    }
    use {
        'nvim-telescope/telescope.nvim',
        requires = {{'nvim-lua/plenary.nvim'}}
    }
    use {
        'kdheepak/tabline.nvim',
        requires = { { 'hoob3rt/lualine.nvim', opt=true }, {'kyazdani42/nvim-web-devicons', opt = true} }
      }
    use{
        'ms-jpq/chadtree',
        branch = 'chad',
        run = 'python3 -m chadtree deps' 
    }

end)

require('plugins/configs')
