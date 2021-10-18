-- check if packer is installed (~/local/share/nvim/site/pack)
local packer_exists = pcall(vim.cmd, [[packadd packer.nvim]])

if not packer_exists then
	if vim.fn.input("Hent packer.nvim? (y for yada)") ~= "y" then
		return
	end

	local directory = string.format(
	'%s/site/pack/packer/opt/',
	vim.fn.stdpath('data')
	)

	vim.fn.mkdir(directory, 'p')

	local git_clone_cmd = vim.fn.system(string.format(
	'git clone %s %s',
	'https://github.com/wbthomason/packer.nvim',
	directory .. '/packer.nvim'
	))

	print(git_clone_cmd)
	print("Henter packer.nvim...")

	return
end

return require('packer').startup(function()
	-- Packer can manage itself as an optional plugin
	use {'wbthomason/packer.nvim', opt = true}
  use 'norcalli/nvim.lua'
  use 'neovim/nvim-lspconfig'
  use 'kyazdani42/nvim-web-devicons'
  use 'airblade/vim-rooter'
  use 'brooth/far.vim'
  use {'kyazdani42/nvim-tree.lua', config = function()
    vim.g.nvim_tree_git_hl = 1
    vim.g.nvim_tree_ignore = { '.git', 'node_modules', '.cache' }
    require'nvim-tree'.setup {
      open_on_setup = true,
      disable_netrw = true,
      hijack_netrw        = true,
      auto_close = true,
    }
  end}
  use 'olimorris/onedark.nvim'
  -- use 'navarasu/onedark.nvim'
  --
  -- use 'RRethy/nvim-base16'

  -- use 'siduck76/nvim-base16.lua'
  -- use 'chriskempson/base16-vim'
  -- use 'christianchiarulli/nvcode-color-schemes.vim'

  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-path'
  -- For vsnip user.
  use 'hrsh7th/cmp-vsnip'
  use 'hrsh7th/vim-vsnip'
  use "rafamadriz/friendly-snippets"


  use 'tpope/vim-commentary'
  use 'tpope/vim-fugitive'
  use 'nvim-lua/lsp-status.nvim'
  use 'sbdchd/neoformat'
  use {'prettier/vim-prettier', run = 'yarn install'}
  use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
  -- use 'norcalli/nvim-colorizer.lua'
  use 'mhinz/vim-startify'
  use 'romgrk/barbar.nvim'
  use 'vim-scripts/indentLine.vim'
  use 'neovimhaskell/haskell-vim'
  -- use 'parsonsmatt/intero-neovim'
  -- use 'junegunn/vim-easy-align'
  -- use {'mg979/vim-visual-multi', branch = 'master'}
  -- use 'norcalli/snippets.nvim'
  -- use 'hrsh7th/nvim-compe'
  use "onsails/lspkind-nvim"
  use {
    'tami5/lspsaga.nvim',
    config = function()
      local saga = require 'lspsaga'
    end
  }
  use {
    'ndmitchell/ghcid',
    rtp = 'plugins/nvim',
  }
  use {
    'nvim-telescope/telescope.nvim',
    requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
  }
  use {
    'ojroques/nvim-lspfuzzy',
    requires = {
      {'junegunn/fzf', dir = '~/.fzf', run = './install --all'},
      {'junegunn/fzf.vim'},  -- to enable preview (optional)
    },
  }
  use {
    'lewis6991/gitsigns.nvim',
    requires = {
      'nvim-lua/plenary.nvim'
    },
    config = function()
      require('gitsigns').setup()
    end
  }
  use {'datwaft/bubbly.nvim', config = function()
    -- Here you can add the configuration for the plugin
    vim.g.bubbly_palette = {
      background = "#34343c",
      foreground = "#c5cdd9",
      black = "#3e4249",
      red = "#ec7279",
      green = "#a0c980",
      yellow = "#deb974",
      blue = "#6cb6eb",
      purple = "#d38aea",
      cyan = "#5dbbc1",
      white = "#c5cdd9",
      lightgrey = "#57595e",
      darkgrey = "#404247",
    }
    vim.g.bubbly_statusline = {
      'mode',
      'truncate',
      'path',
      'branch',
      'signify',
      'coc',
      'divisor',
      'filetype',
      'progress',
    }
  end}
  use {
    "folke/trouble.nvim",
    requires = "kyazdani42/nvim-web-devicons",
    config = function()
      require("trouble").setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
        auto_open = true,
        auto_close = true,
      }
    end
  }
  end)
