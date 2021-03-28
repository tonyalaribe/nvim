" Automatically generated packer.nvim plugin loader code

if !has('nvim-0.5')
  echohl WarningMsg
  echom "Invalid Neovim version for packer.nvim!"
  echohl None
  finish
endif

packadd packer.nvim

try

lua << END
local package_path_str = "/Users/tonyalaribe/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/tonyalaribe/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/tonyalaribe/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/tonyalaribe/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/tonyalaribe/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    print('Error running ' .. component .. ' for ' .. name)
    error(result)
  end
  return result
end

_G.packer_plugins = {
  ["barbar.nvim"] = {
    loaded = true,
    path = "/Users/tonyalaribe/.local/share/nvim/site/pack/packer/start/barbar.nvim"
  },
  ["blackboard.vim"] = {
    loaded = true,
    path = "/Users/tonyalaribe/.local/share/nvim/site/pack/packer/start/blackboard.vim"
  },
  ["bubbly.nvim"] = {
    config = { "\27LJ\2\n‹\2\0\0\2\0\a\0\r6\0\0\0009\0\1\0005\1\3\0=\1\2\0006\0\0\0009\0\1\0004\1\0\0=\1\4\0006\0\0\0009\0\1\0005\1\6\0=\1\5\0K\0\1\0\1\f\0\0\tmode\rtruncate\tpath\vbranch\fsignify\bcoc\fdivisor\rfiletype\rprogress\27lsp_status.diagnostics\24lsp_status.messages\22bubbly_statusline\19bubbly_palette\1\0\2\15background\tNone\15foreground\nblack\26bubbly_inactive_color\6g\bvim\0" },
    loaded = true,
    path = "/Users/tonyalaribe/.local/share/nvim/site/pack/packer/start/bubbly.nvim"
  },
  ["completion-nvim"] = {
    loaded = true,
    path = "/Users/tonyalaribe/.local/share/nvim/site/pack/packer/start/completion-nvim"
  },
  ["doom-one.vim"] = {
    loaded = true,
    path = "/Users/tonyalaribe/.local/share/nvim/site/pack/packer/start/doom-one.vim"
  },
  fzf = {
    loaded = true,
    path = "/Users/tonyalaribe/.local/share/nvim/site/pack/packer/start/fzf"
  },
  ["fzf.vim"] = {
    loaded = true,
    path = "/Users/tonyalaribe/.local/share/nvim/site/pack/packer/start/fzf.vim"
  },
  ["indentLine.vim"] = {
    loaded = true,
    path = "/Users/tonyalaribe/.local/share/nvim/site/pack/packer/start/indentLine.vim"
  },
  ["lsp-status.nvim"] = {
    loaded = true,
    path = "/Users/tonyalaribe/.local/share/nvim/site/pack/packer/start/lsp-status.nvim"
  },
  neoformat = {
    loaded = true,
    path = "/Users/tonyalaribe/.local/share/nvim/site/pack/packer/start/neoformat"
  },
  ["neovim-sensible"] = {
    loaded = true,
    path = "/Users/tonyalaribe/.local/share/nvim/site/pack/packer/start/neovim-sensible"
  },
  ["nvcode-color-schemes.vim"] = {
    loaded = true,
    path = "/Users/tonyalaribe/.local/share/nvim/site/pack/packer/start/nvcode-color-schemes.vim"
  },
  ["nvim-colorizer.lua"] = {
    loaded = true,
    path = "/Users/tonyalaribe/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua"
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
    config = { "\27LJ\2\nˆ\2\0\0\2\0\t\0\0256\0\0\0009\0\1\0)\1\1\0=\1\2\0006\0\0\0009\0\1\0)\1\1\0=\1\3\0006\0\0\0009\0\1\0005\1\5\0=\1\4\0006\0\0\0009\0\1\0)\1\1\0=\1\6\0006\0\0\0009\0\1\0)\1\1\0=\1\a\0006\0\0\0009\0\1\0)\1\1\0=\1\b\0K\0\1\0\27nvim_tree_quit_on_open\25nvim_tree_auto_close\28nvim_tree_disable_netrw\1\4\0\0\t.git\17node_modules\v.cache\21nvim_tree_ignore\21nvim_tree_git_hl\24nvim_tree_auto_open\6g\bvim\0" },
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
  ["packer.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/Users/tonyalaribe/.local/share/nvim/site/pack/packer/opt/packer.nvim"
  },
  ["vim-clap"] = {
    loaded = true,
    path = "/Users/tonyalaribe/.local/share/nvim/site/pack/packer/start/vim-clap"
  },
  ["vim-commentary"] = {
    loaded = true,
    path = "/Users/tonyalaribe/.local/share/nvim/site/pack/packer/start/vim-commentary"
  },
  ["vim-easy-align"] = {
    loaded = true,
    path = "/Users/tonyalaribe/.local/share/nvim/site/pack/packer/start/vim-easy-align"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/Users/tonyalaribe/.local/share/nvim/site/pack/packer/start/vim-fugitive"
  },
  ["vim-gitgutter"] = {
    loaded = true,
    path = "/Users/tonyalaribe/.local/share/nvim/site/pack/packer/start/vim-gitgutter"
  },
  ["vim-kalisi"] = {
    loaded = true,
    path = "/Users/tonyalaribe/.local/share/nvim/site/pack/packer/start/vim-kalisi"
  },
  ["vim-one"] = {
    loaded = true,
    path = "/Users/tonyalaribe/.local/share/nvim/site/pack/packer/start/vim-one"
  },
  ["vim-prettier"] = {
    loaded = true,
    path = "/Users/tonyalaribe/.local/share/nvim/site/pack/packer/start/vim-prettier"
  },
  ["vim-startify"] = {
    loaded = true,
    path = "/Users/tonyalaribe/.local/share/nvim/site/pack/packer/start/vim-startify"
  },
  ["vim-visual-multi"] = {
    loaded = true,
    path = "/Users/tonyalaribe/.local/share/nvim/site/pack/packer/start/vim-visual-multi"
  }
}

-- Config for: bubbly.nvim
try_loadstring("\27LJ\2\n‹\2\0\0\2\0\a\0\r6\0\0\0009\0\1\0005\1\3\0=\1\2\0006\0\0\0009\0\1\0004\1\0\0=\1\4\0006\0\0\0009\0\1\0005\1\6\0=\1\5\0K\0\1\0\1\f\0\0\tmode\rtruncate\tpath\vbranch\fsignify\bcoc\fdivisor\rfiletype\rprogress\27lsp_status.diagnostics\24lsp_status.messages\22bubbly_statusline\19bubbly_palette\1\0\2\15background\tNone\15foreground\nblack\26bubbly_inactive_color\6g\bvim\0", "config", "bubbly.nvim")
-- Config for: nvim-tree.lua
try_loadstring("\27LJ\2\nˆ\2\0\0\2\0\t\0\0256\0\0\0009\0\1\0)\1\1\0=\1\2\0006\0\0\0009\0\1\0)\1\1\0=\1\3\0006\0\0\0009\0\1\0005\1\5\0=\1\4\0006\0\0\0009\0\1\0)\1\1\0=\1\6\0006\0\0\0009\0\1\0)\1\1\0=\1\a\0006\0\0\0009\0\1\0)\1\1\0=\1\b\0K\0\1\0\27nvim_tree_quit_on_open\25nvim_tree_auto_close\28nvim_tree_disable_netrw\1\4\0\0\t.git\17node_modules\v.cache\21nvim_tree_ignore\21nvim_tree_git_hl\24nvim_tree_auto_open\6g\bvim\0", "config", "nvim-tree.lua")
END

catch
  echohl ErrorMsg
  echom "Error in packer_compiled: " .. v:exception
  echom "Please check your config for correctness"
  echohl None
endtry
