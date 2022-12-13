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

  -- Multi-line plugins

  -- Telescope
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  
  -- Commenting
  use {     'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup()
    end
  }

  -- Startup theme
  -- use {
  --   "startup-nvim/startup.nvim",
  --   requires = {"nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim"},
  --   config = function()
  --     require"startup".setup({theme = "dashboard"})
  --   end
  -- }

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


end)
