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
local package_path_str = "/Users/a.alaribe/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/a.alaribe/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/a.alaribe/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/a.alaribe/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/a.alaribe/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
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
    path = "/Users/a.alaribe/.local/share/nvim/site/pack/packer/start/barbar.nvim"
  },
  ["base16-vim"] = {
    loaded = true,
    path = "/Users/a.alaribe/.local/share/nvim/site/pack/packer/start/base16-vim"
  },
  fzf = {
    loaded = true,
    path = "/Users/a.alaribe/.local/share/nvim/site/pack/packer/start/fzf"
  },
  ["fzf.vim"] = {
    loaded = true,
    path = "/Users/a.alaribe/.local/share/nvim/site/pack/packer/start/fzf.vim"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\nù\n\0\0\5\0\24\0\0276\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\14\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0=\4\a\0035\4\b\0=\4\t\0035\4\n\0=\4\v\0035\4\f\0=\4\r\3=\3\15\0025\3\16\0005\4\17\0=\4\18\0035\4\19\0=\4\20\3=\3\21\0025\3\22\0=\3\23\2B\0\2\1K\0\1\0\16watch_index\1\0\1\rinterval\3Ë\a\fkeymaps\tn [c\1\2\1\0@&diff ? '[c' : '<cmd>lua require\"gitsigns\".prev_hunk()<CR>'\texpr\2\tn ]c\1\2\1\0@&diff ? ']c' : '<cmd>lua require\"gitsigns\".next_hunk()<CR>'\texpr\2\1\0\n\17n <leader>hb0<cmd>lua require\"gitsigns\".blame_line()<CR>\17n <leader>hp2<cmd>lua require\"gitsigns\".preview_hunk()<CR>\tx ih2:<C-U>lua require\"gitsigns\".select_hunk()<CR>\17n <leader>hR2<cmd>lua require\"gitsigns\".reset_buffer()<CR>\17n <leader>hr0<cmd>lua require\"gitsigns\".reset_hunk()<CR>\17n <leader>hu5<cmd>lua require\"gitsigns\".undo_stage_hunk()<CR>\17n <leader>hs0<cmd>lua require\"gitsigns\".stage_hunk()<CR>\vbuffer\2\to ih2:<C-U>lua require\"gitsigns\".select_hunk()<CR>\fnoremap\2\nsigns\1\0\6\nnumhl\1\22use_internal_diff\2\23use_decoration_api\2\20update_debounce\3d\18sign_priority\3\6\vlinehl\1\17changedelete\1\0\4\ahl\19GitSignsChange\nnumhl\21GitSignsChangeNr\ttext\6~\vlinehl\21GitSignsChangeLn\14topdelete\1\0\4\ahl\19GitSignsDelete\nnumhl\21GitSignsDeleteNr\ttext\b‚Äæ\vlinehl\21GitSignsDeleteLn\vdelete\1\0\4\ahl\19GitSignsDelete\nnumhl\21GitSignsDeleteNr\ttext\6_\vlinehl\21GitSignsDeleteLn\vchange\1\0\4\ahl\19GitSignsChange\nnumhl\21GitSignsChangeNr\ttext\b‚îÇ\vlinehl\21GitSignsChangeLn\badd\1\0\0\1\0\4\ahl\16GitSignsAdd\nnumhl\18GitSignsAddNr\ttext\b‚îÇ\vlinehl\18GitSignsAddLn\nsetup\rgitsigns\frequire\0" },
    loaded = true,
    path = "/Users/a.alaribe/.local/share/nvim/site/pack/packer/start/gitsigns.nvim"
  },
  ["indentLine.vim"] = {
    loaded = true,
    path = "/Users/a.alaribe/.local/share/nvim/site/pack/packer/start/indentLine.vim"
  },
  ["lsp-status.nvim"] = {
    loaded = true,
    path = "/Users/a.alaribe/.local/share/nvim/site/pack/packer/start/lsp-status.nvim"
  },
  ["lspkind-nvim"] = {
    loaded = true,
    path = "/Users/a.alaribe/.local/share/nvim/site/pack/packer/start/lspkind-nvim"
  },
  ["lspsaga.nvim"] = {
    config = { "\27LJ\2\n'\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\2K\0\1\0\flspsaga\frequire\0" },
    loaded = true,
    path = "/Users/a.alaribe/.local/share/nvim/site/pack/packer/start/lspsaga.nvim"
  },
  ["neovim-sensible"] = {
    loaded = true,
    path = "/Users/a.alaribe/.local/share/nvim/site/pack/packer/start/neovim-sensible"
  },
  ["nvcode-color-schemes.vim"] = {
    loaded = true,
    path = "/Users/a.alaribe/.local/share/nvim/site/pack/packer/start/nvcode-color-schemes.vim"
  },
  ["nvim-colorizer.lua"] = {
    loaded = true,
    path = "/Users/a.alaribe/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua"
  },
  ["nvim-compe"] = {
    loaded = true,
    path = "/Users/a.alaribe/.local/share/nvim/site/pack/packer/start/nvim-compe"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/Users/a.alaribe/.local/share/nvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["nvim-lspfuzzy"] = {
    loaded = true,
    path = "/Users/a.alaribe/.local/share/nvim/site/pack/packer/start/nvim-lspfuzzy"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\nà\2\0\0\2\0\t\0\0256\0\0\0009\0\1\0)\1\1\0=\1\2\0006\0\0\0009\0\1\0)\1\1\0=\1\3\0006\0\0\0009\0\1\0005\1\5\0=\1\4\0006\0\0\0009\0\1\0)\1\1\0=\1\6\0006\0\0\0009\0\1\0)\1\0\0=\1\a\0006\0\0\0009\0\1\0)\1\0\0=\1\b\0K\0\1\0\27nvim_tree_quit_on_open\25nvim_tree_auto_close\28nvim_tree_disable_netrw\1\4\0\0\t.git\17node_modules\v.cache\21nvim_tree_ignore\21nvim_tree_git_hl\24nvim_tree_auto_open\6g\bvim\0" },
    loaded = true,
    path = "/Users/a.alaribe/.local/share/nvim/site/pack/packer/start/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/Users/a.alaribe/.local/share/nvim/site/pack/packer/start/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/Users/a.alaribe/.local/share/nvim/site/pack/packer/start/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/Users/a.alaribe/.local/share/nvim/site/pack/packer/opt/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/a.alaribe/.local/share/nvim/site/pack/packer/start/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/Users/a.alaribe/.local/share/nvim/site/pack/packer/start/popup.nvim"
  },
  ["snippets.nvim"] = {
    loaded = true,
    path = "/Users/a.alaribe/.local/share/nvim/site/pack/packer/start/snippets.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/Users/a.alaribe/.local/share/nvim/site/pack/packer/start/telescope.nvim"
  },
  ["vim-commentary"] = {
    loaded = true,
    path = "/Users/a.alaribe/.local/share/nvim/site/pack/packer/start/vim-commentary"
  },
  ["vim-easy-align"] = {
    loaded = true,
    path = "/Users/a.alaribe/.local/share/nvim/site/pack/packer/start/vim-easy-align"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/Users/a.alaribe/.local/share/nvim/site/pack/packer/start/vim-fugitive"
  },
  ["vim-prettier"] = {
    loaded = true,
    path = "/Users/a.alaribe/.local/share/nvim/site/pack/packer/start/vim-prettier"
  },
  ["vim-rooter"] = {
    loaded = true,
    path = "/Users/a.alaribe/.local/share/nvim/site/pack/packer/start/vim-rooter"
  },
  ["vim-startify"] = {
    loaded = true,
    path = "/Users/a.alaribe/.local/share/nvim/site/pack/packer/start/vim-startify"
  },
  ["vim-visual-multi"] = {
    loaded = true,
    path = "/Users/a.alaribe/.local/share/nvim/site/pack/packer/start/vim-visual-multi"
  }
}

-- Config for: nvim-tree.lua
try_loadstring("\27LJ\2\nà\2\0\0\2\0\t\0\0256\0\0\0009\0\1\0)\1\1\0=\1\2\0006\0\0\0009\0\1\0)\1\1\0=\1\3\0006\0\0\0009\0\1\0005\1\5\0=\1\4\0006\0\0\0009\0\1\0)\1\1\0=\1\6\0006\0\0\0009\0\1\0)\1\0\0=\1\a\0006\0\0\0009\0\1\0)\1\0\0=\1\b\0K\0\1\0\27nvim_tree_quit_on_open\25nvim_tree_auto_close\28nvim_tree_disable_netrw\1\4\0\0\t.git\17node_modules\v.cache\21nvim_tree_ignore\21nvim_tree_git_hl\24nvim_tree_auto_open\6g\bvim\0", "config", "nvim-tree.lua")
-- Config for: lspsaga.nvim
try_loadstring("\27LJ\2\n'\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\2K\0\1\0\flspsaga\frequire\0", "config", "lspsaga.nvim")
-- Config for: gitsigns.nvim
try_loadstring("\27LJ\2\nù\n\0\0\5\0\24\0\0276\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\14\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0=\4\a\0035\4\b\0=\4\t\0035\4\n\0=\4\v\0035\4\f\0=\4\r\3=\3\15\0025\3\16\0005\4\17\0=\4\18\0035\4\19\0=\4\20\3=\3\21\0025\3\22\0=\3\23\2B\0\2\1K\0\1\0\16watch_index\1\0\1\rinterval\3Ë\a\fkeymaps\tn [c\1\2\1\0@&diff ? '[c' : '<cmd>lua require\"gitsigns\".prev_hunk()<CR>'\texpr\2\tn ]c\1\2\1\0@&diff ? ']c' : '<cmd>lua require\"gitsigns\".next_hunk()<CR>'\texpr\2\1\0\n\17n <leader>hb0<cmd>lua require\"gitsigns\".blame_line()<CR>\17n <leader>hp2<cmd>lua require\"gitsigns\".preview_hunk()<CR>\tx ih2:<C-U>lua require\"gitsigns\".select_hunk()<CR>\17n <leader>hR2<cmd>lua require\"gitsigns\".reset_buffer()<CR>\17n <leader>hr0<cmd>lua require\"gitsigns\".reset_hunk()<CR>\17n <leader>hu5<cmd>lua require\"gitsigns\".undo_stage_hunk()<CR>\17n <leader>hs0<cmd>lua require\"gitsigns\".stage_hunk()<CR>\vbuffer\2\to ih2:<C-U>lua require\"gitsigns\".select_hunk()<CR>\fnoremap\2\nsigns\1\0\6\nnumhl\1\22use_internal_diff\2\23use_decoration_api\2\20update_debounce\3d\18sign_priority\3\6\vlinehl\1\17changedelete\1\0\4\ahl\19GitSignsChange\nnumhl\21GitSignsChangeNr\ttext\6~\vlinehl\21GitSignsChangeLn\14topdelete\1\0\4\ahl\19GitSignsDelete\nnumhl\21GitSignsDeleteNr\ttext\b‚Äæ\vlinehl\21GitSignsDeleteLn\vdelete\1\0\4\ahl\19GitSignsDelete\nnumhl\21GitSignsDeleteNr\ttext\6_\vlinehl\21GitSignsDeleteLn\vchange\1\0\4\ahl\19GitSignsChange\nnumhl\21GitSignsChangeNr\ttext\b‚îÇ\vlinehl\21GitSignsChangeLn\badd\1\0\0\1\0\4\ahl\16GitSignsAdd\nnumhl\18GitSignsAddNr\ttext\b‚îÇ\vlinehl\18GitSignsAddLn\nsetup\rgitsigns\frequire\0", "config", "gitsigns.nvim")
END

catch
  echohl ErrorMsg
  echom "Error in packer_compiled: " .. v:exception
  echom "Please check your config for correctness"
  echohl None
endtry
