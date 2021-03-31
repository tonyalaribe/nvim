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
  use {'kyazdani42/nvim-tree.lua', config = function()
    vim.g.nvim_tree_auto_open = 1
    vim.g.nvim_tree_git_hl = 1
    vim.g.nvim_tree_ignore = { '.git', 'node_modules', '.cache' }
    vim.g.nvim_tree_disable_netrw = 1
    vim.g.nvim_tree_auto_close = 1
    vim.g.nvim_tree_quit_on_open = 0
  end}
  -- use 'lisposter/vim-blackboard'
  -- use 'ratazzi/blackboard.vim'
  -- use 'rakr/vim-one'
  -- use 'freeo/vim-kalisi'
  -- use 'romgrk/doom-one.vim'
  use 'chriskempson/base16-vim'
  use 'christianchiarulli/nvcode-color-schemes.vim'
  use 'nvim-lua/completion-nvim'
  use 'tpope/vim-commentary'
  use 'tpope/vim-fugitive'
  use 'airblade/vim-gitgutter'
  use 'nvim-lua/lsp-status.nvim'
  use 'sbdchd/neoformat'
  use {'prettier/vim-prettier', run = 'yarn install'}
  use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
  use 'norcalli/nvim-colorizer.lua'
  use 'mhinz/vim-startify'
  use 'romgrk/barbar.nvim'
  use 'vim-scripts/indentLine.vim'
  use 'junegunn/vim-easy-align'
  use {'mg979/vim-visual-multi', branch = 'master'}
  use {'liuchengxu/vim-clap', run = ':Clap install-binary!'}
  use {
    'ojroques/nvim-lspfuzzy',
    requires = {
      {'junegunn/fzf', dir = '~/.fzf', run = './install --all'},
      {'junegunn/fzf.vim'},  -- to enable preview (optional)
    },
  }
  end)
