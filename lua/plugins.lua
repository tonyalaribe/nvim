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
  --
  -- use 'junegunn/vim-easy-align'
  use 'norcalli/nvim-colorizer.lua'
  -- use 'parsonsmatt/intero-neovim'
  -- use {'mg979/vim-visual-multi', branch = 'master'}
  use "onsails/lspkind-nvim"
  use "rafamadriz/friendly-snippets"
  use 'airblade/vim-rooter'
  use 'brooth/far.vim'
  use 'github/copilot.vim'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-nvim-lua'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/cmp-vsnip'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/vim-vsnip'
  use 'kyazdani42/nvim-web-devicons'
  use 'mhinz/vim-startify'
  use 'neovim/nvim-lspconfig'
  use 'neovimhaskell/haskell-vim'
  use 'norcalli/nvim.lua'
  use 'nvim-lua/lsp-status.nvim'
  use 'olimorris/onedarkpro.nvim'
  use 'romgrk/barbar.nvim'
  use 'sbdchd/neoformat'
  use 'tpope/vim-commentary'
  use 'tpope/vim-fugitive'
  use 'vim-scripts/indentLine.vim'
  use {'junegunn/fzf', dir = '~/.fzf', run = './install --all'}
  use {'junegunn/fzf.vim'}
  use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
  use {'prettier/vim-prettier', run = 'yarn install'}
  use {'ojroques/nvim-lspfuzzy'}
  use {'ndmitchell/ghcid',rtp = 'plugins/nvim'}
  use {
    'tami5/lspsaga.nvim',
    config = function()
      local saga = require 'lspsaga'
    end
  }
  use {
    'nvim-telescope/telescope.nvim',
    requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
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
  use {
    "folke/trouble.nvim",
    config = function()
      require("trouble").setup {
        auto_open = true,
        auto_close = false,
      }
    end
  }
end)
