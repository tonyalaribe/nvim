-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/Users/tonyalaribe/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/tonyalaribe/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/tonyalaribe/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/tonyalaribe/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/tonyalaribe/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["barbar.nvim"] = {
    loaded = true,
    path = "/Users/tonyalaribe/.local/share/nvim/site/pack/packer/start/barbar.nvim"
  },
  ["bubbly.nvim"] = {
    config = { "\27LJ\2\n–\2\0\0\2\0\6\0\t6\0\0\0009\0\1\0005\1\3\0=\1\2\0006\0\0\0009\0\1\0005\1\5\0=\1\4\0K\0\1\0\1\n\0\0\tmode\rtruncate\tpath\vbranch\fsignify\bcoc\fdivisor\rfiletype\rprogress\22bubbly_statusline\1\0\f\nwhite\f#c5cdd9\tcyan\f#5dbbc1\14lightgrey\f#57595e\vpurple\f#d38aea\tblue\f#6cb6eb\vyellow\f#deb974\ngreen\f#a0c980\bred\f#ec7279\rdarkgrey\f#404247\nblack\f#3e4249\15background\f#34343c\15foreground\f#c5cdd9\19bubbly_palette\6g\bvim\0" },
    loaded = true,
    path = "/Users/tonyalaribe/.local/share/nvim/site/pack/packer/start/bubbly.nvim"
  },
  ["completion-nvim"] = {
    loaded = true,
    path = "/Users/tonyalaribe/.local/share/nvim/site/pack/packer/start/completion-nvim"
  },
  fzf = {
    loaded = true,
    path = "/Users/tonyalaribe/.local/share/nvim/site/pack/packer/start/fzf"
  },
  ["fzf.vim"] = {
    loaded = true,
    path = "/Users/tonyalaribe/.local/share/nvim/site/pack/packer/start/fzf.vim"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rgitsigns\frequire\0" },
    loaded = true,
    path = "/Users/tonyalaribe/.local/share/nvim/site/pack/packer/start/gitsigns.nvim"
  },
  ["haskell-vim"] = {
    loaded = true,
    path = "/Users/tonyalaribe/.local/share/nvim/site/pack/packer/start/haskell-vim"
  },
  ["indentLine.vim"] = {
    loaded = true,
    path = "/Users/tonyalaribe/.local/share/nvim/site/pack/packer/start/indentLine.vim"
  },
  ["intero-neovim"] = {
    loaded = true,
    path = "/Users/tonyalaribe/.local/share/nvim/site/pack/packer/start/intero-neovim"
  },
  ["lsp-status.nvim"] = {
    loaded = true,
    path = "/Users/tonyalaribe/.local/share/nvim/site/pack/packer/start/lsp-status.nvim"
  },
  ["lspkind-nvim"] = {
    loaded = true,
    path = "/Users/tonyalaribe/.local/share/nvim/site/pack/packer/start/lspkind-nvim"
  },
  ["lspsaga.nvim"] = {
    config = { "\27LJ\2\n'\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\2K\0\1\0\flspsaga\frequire\0" },
    loaded = true,
    path = "/Users/tonyalaribe/.local/share/nvim/site/pack/packer/start/lspsaga.nvim"
  },
  neoformat = {
    loaded = true,
    path = "/Users/tonyalaribe/.local/share/nvim/site/pack/packer/start/neoformat"
  },
  ["neovim-sensible"] = {
    loaded = true,
    path = "/Users/tonyalaribe/.local/share/nvim/site/pack/packer/start/neovim-sensible"
  },
  ["nvim-base16.lua"] = {
    loaded = true,
    path = "/Users/tonyalaribe/.local/share/nvim/site/pack/packer/start/nvim-base16.lua"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/Users/tonyalaribe/.local/share/nvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["nvim-lspfuzzy"] = {
    loaded = true,
    path = "/Users/tonyalaribe/.local/share/nvim/site/pack/packer/start/nvim-lspfuzzy"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\nà\2\0\0\2\0\t\0\0256\0\0\0009\0\1\0)\1\1\0=\1\2\0006\0\0\0009\0\1\0)\1\1\0=\1\3\0006\0\0\0009\0\1\0005\1\5\0=\1\4\0006\0\0\0009\0\1\0)\1\1\0=\1\6\0006\0\0\0009\0\1\0)\1\0\0=\1\a\0006\0\0\0009\0\1\0)\1\0\0=\1\b\0K\0\1\0\27nvim_tree_quit_on_open\25nvim_tree_auto_close\28nvim_tree_disable_netrw\1\4\0\0\t.git\17node_modules\v.cache\21nvim_tree_ignore\21nvim_tree_git_hl\24nvim_tree_auto_open\6g\bvim\0" },
    loaded = true,
    path = "/Users/tonyalaribe/.local/share/nvim/site/pack/packer/start/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/Users/tonyalaribe/.local/share/nvim/site/pack/packer/start/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/Users/tonyalaribe/.local/share/nvim/site/pack/packer/start/nvim-web-devicons"
  },
  ["nvim.lua"] = {
    loaded = true,
    path = "/Users/tonyalaribe/.local/share/nvim/site/pack/packer/start/nvim.lua"
  },
  ["packer.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/Users/tonyalaribe/.local/share/nvim/site/pack/packer/opt/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/tonyalaribe/.local/share/nvim/site/pack/packer/start/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/Users/tonyalaribe/.local/share/nvim/site/pack/packer/start/popup.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/Users/tonyalaribe/.local/share/nvim/site/pack/packer/start/telescope.nvim"
  },
  ["vim-commentary"] = {
    loaded = true,
    path = "/Users/tonyalaribe/.local/share/nvim/site/pack/packer/start/vim-commentary"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/Users/tonyalaribe/.local/share/nvim/site/pack/packer/start/vim-fugitive"
  },
  ["vim-prettier"] = {
    loaded = true,
    path = "/Users/tonyalaribe/.local/share/nvim/site/pack/packer/start/vim-prettier"
  },
  ["vim-rooter"] = {
    loaded = true,
    path = "/Users/tonyalaribe/.local/share/nvim/site/pack/packer/start/vim-rooter"
  },
  ["vim-startify"] = {
    loaded = true,
    path = "/Users/tonyalaribe/.local/share/nvim/site/pack/packer/start/vim-startify"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\nà\2\0\0\2\0\t\0\0256\0\0\0009\0\1\0)\1\1\0=\1\2\0006\0\0\0009\0\1\0)\1\1\0=\1\3\0006\0\0\0009\0\1\0005\1\5\0=\1\4\0006\0\0\0009\0\1\0)\1\1\0=\1\6\0006\0\0\0009\0\1\0)\1\0\0=\1\a\0006\0\0\0009\0\1\0)\1\0\0=\1\b\0K\0\1\0\27nvim_tree_quit_on_open\25nvim_tree_auto_close\28nvim_tree_disable_netrw\1\4\0\0\t.git\17node_modules\v.cache\21nvim_tree_ignore\21nvim_tree_git_hl\24nvim_tree_auto_open\6g\bvim\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
-- Config for: bubbly.nvim
time([[Config for bubbly.nvim]], true)
try_loadstring("\27LJ\2\n–\2\0\0\2\0\6\0\t6\0\0\0009\0\1\0005\1\3\0=\1\2\0006\0\0\0009\0\1\0005\1\5\0=\1\4\0K\0\1\0\1\n\0\0\tmode\rtruncate\tpath\vbranch\fsignify\bcoc\fdivisor\rfiletype\rprogress\22bubbly_statusline\1\0\f\nwhite\f#c5cdd9\tcyan\f#5dbbc1\14lightgrey\f#57595e\vpurple\f#d38aea\tblue\f#6cb6eb\vyellow\f#deb974\ngreen\f#a0c980\bred\f#ec7279\rdarkgrey\f#404247\nblack\f#3e4249\15background\f#34343c\15foreground\f#c5cdd9\19bubbly_palette\6g\bvim\0", "config", "bubbly.nvim")
time([[Config for bubbly.nvim]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rgitsigns\frequire\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
-- Config for: lspsaga.nvim
time([[Config for lspsaga.nvim]], true)
try_loadstring("\27LJ\2\n'\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\2K\0\1\0\flspsaga\frequire\0", "config", "lspsaga.nvim")
time([[Config for lspsaga.nvim]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
