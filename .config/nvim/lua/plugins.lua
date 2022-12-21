-- Run PackerCompile on file change
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

-- New plugins go here
return require('packer').startup(function(use)

  -- One liner plugins
  use 'wbthomason/packer.nvim' -- Packer

  use 'lewis6991/impatient.nvim' -- Faster nvim startup times
  use 'EdenEast/nightfox.nvim' -- Theme
  use 'nvim-lua/plenary.nvim' -- Lua functions, required by other plugins
  use 'nvim-tree/nvim-tree.lua' -- File explorer tree
  use 'nvim-tree/nvim-web-devicons' -- File explorer tree icons

  -- LSPs
  use 'williamboman/mason.nvim'    
  use 'williamboman/mason-lspconfig.nvim'
  use 'neovim/nvim-lspconfig' 
  use 'simrat39/rust-tools.nvim'
  -- use 'ms-jpq/coq_nvim'

  -- Completion & Snippets
  use 'hrsh7th/nvim-cmp' 
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-nvim-lua'
  use 'hrsh7th/cmp-nvim-lsp-signature-help'
  use 'hrsh7th/cmp-vsnip'                             
  use 'hrsh7th/cmp-path'                              
  use 'hrsh7th/cmp-buffer'                            
  use 'hrsh7th/vim-vsnip'

  -- Multi-line plugins

  -- Commenting
  use {     'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup()
    end
  }

  -- Status bar - lua line
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  use {
      'nvim-treesitter/nvim-treesitter',
      run = function()
          local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
          ts_update()
      end,
  }

  use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'}

  use {
    'phaazon/hop.nvim',
    branch = 'v2', -- optional but strongly recommended
    config = function()
      -- you can configure Hop the way you like here; see :h hop-config
      require'hop'.setup { keys = 'qwertyuiopasdfghjklzxcvbnm1234567890' }
    end
  }

  use 'voldikss/vim-floaterm' -- Terminal
  use 'mg979/vim-visual-multi' -- multi cursor
  use 'RRethy/vim-illuminate' -- highlight same word on other places

  use {
    "windwp/nvim-autopairs",
      config = function() require("nvim-autopairs").setup {} end
  }

end)
