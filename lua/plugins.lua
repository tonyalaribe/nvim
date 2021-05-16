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

  use 'jeffkreeftmeijer/neovim-sensible'
  use 'neovim/nvim-lspconfig'
  use 'kyazdani42/nvim-web-devicons'
  use 'airblade/vim-rooter'
  use {'kyazdani42/nvim-tree.lua', config = function()
    vim.g.nvim_tree_auto_open = 1
    vim.g.nvim_tree_git_hl = 1
    vim.g.nvim_tree_ignore = { '.git', 'node_modules', '.cache' }
    vim.g.nvim_tree_disable_netrw = 1
    vim.g.nvim_tree_auto_close = 0
    vim.g.nvim_tree_quit_on_open = 0
  end}
  use 'chriskempson/base16-vim'
  -- use 'christianchiarulli/nvcode-color-schemes.vim'
  use 'nvim-lua/completion-nvim'
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
  -- use 'junegunn/vim-easy-align'
  -- use {'mg979/vim-visual-multi', branch = 'master'}
  -- use 'norcalli/snippets.nvim'
  -- use 'hrsh7th/nvim-compe'
  use "onsails/lspkind-nvim"
  use {
    'glepnir/lspsaga.nvim',
    config = function()
      local saga = require 'lspsaga'
    end
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
  end)
