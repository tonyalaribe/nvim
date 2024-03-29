-- local global = require('core.global')

local function bind_option(options)
  for k, v in pairs(options) do
    if v == true or v == false then
      vim.cmd('set ' .. k)
    else
      vim.cmd('set ' .. k .. '=' .. v)
    end
  end
end

local function load_options()
  local global_local = {
    -- backupdir      = global.cache_dir .. "backup/";
    -- directory      = global.cache_dir .. "swag/";
    -- spellfile      = global.cache_dir .. "spell/en.uft-8.add";
    -- undodir        = global.cache_dir .. "undo/";
    -- viewdir        = global.cache_dir .. "view/";
    backspace      = "indent,eol,start";
    backup         = false;
    backupskip     = "/tmp/*,$TMPDIR/*,$TMP/*,$TEMP/*,*/shm/*,/private/var/*,.vault.vim";
    breakat        = [[\ \	;:,!?]];
    clipboard      = "unnamedplus";
    cmdheight      = 2;
    cmdwinheight   = 5;
    complete       = ".,w,b,k";
    completeopt    = "menuone,noselect";
    diffopt        = "filler,iwhite,internal,algorithm:patience";
    display        = "lastline";
    encoding       = "utf-8";
    equalalways    = false;
    errorbells     = true;
    fileformats    = "unix,mac,dos";
    foldexpr       = "nvim_treesitter#foldexpr()";
    foldlevelstart = 99;
    foldmethod     = "expr";
    grepformat     = "%f:%l:%c:%m";
    grepprg        = 'rg --hidden --vimgrep --smart-case --';
    helpheight     = 12;
    hidden         = true;
    history        = 2000;
    ignorecase     = true;
    inccommand     = "nosplit";
    incsearch      = true;
    infercase      = true;
    jumpoptions    = "stack";
    laststatus     = 2;
    list           = true;
    listchars      = "tab:»·,nbsp:+,trail:·,extends:→,precedes:←";
    magic          = true;
    mouse          = "nv";
    previewheight  = 12;
    pumblend       = 10;
    pumheight      = 15;
    redrawtime     = 1500;
    ruler          = false;
    scrolloff      = 2;
    sessionoptions = "curdir,help,tabpages,winsize";
    signcolumn     = "number";
    shada          = "!,'300,<50,@100,s10,h";
    shiftround     = true;
    shortmess      = "aoOTIcF";
    showbreak      = "↳  ";
    showcmd        = false;
    showmode       = false;
    showtabline    = 2;
    sidescrolloff  = 5;
    smartcase      = true;
    smarttab       = true;
    splitbelow     = true;
    splitright     = true;
    startofline    = false;
    swapfile       = false;
    switchbuf      = "useopen";
    termguicolors  = true;
    timeout        = true;
    timeoutlen     = 500;
    ttimeout       = true;
    ttimeoutlen    = 10;
    undofile       = true;
    updatetime     = 100;
    viewoptions    = "folds,cursor,curdir,slash,unix";
    virtualedit    = "block";
    visualbell     = true;
    whichwrap      = "h,l,<,>,[,],~";
    wildignore     = ".git,.hg,.svn,*.pyc,*.o,*.out,*.jpg,*.jpeg,*.png,*.gif,*.zip,**/tmp/**,*.DS_Store,**/node_modules/**,**/bower_modules/**";
    wildignorecase = true;
    winblend       = 10;
    winminwidth    = 10;
    winwidth       = 30;
    wrapscan       = true;
    writebackup    = false;
  }

  local bw_local  = {
    synmaxcol      = 2500;
    formatoptions  = "1jcroql";
    textwidth      = 80;
    expandtab      = true;
    autoindent     = true;
    tabstop        = 2;
    shiftwidth     = 2;
    softtabstop    = -1;
    breakindentopt = "shift:2,min:20";
    wrap           = false;
    linebreak      = true;
    number         = false;
    colorcolumn    = "80";
    foldenable     = true;
    signcolumn     = "number";
    conceallevel   = 2;
    concealcursor  = "niv";
    norelativenumber = true;
    cursorline = true;
  }

  -- if global.is_mac then
  if true then
    vim.g.clipboard = {
      name = "macOS-clipboard",
      copy = {
        ["+"] = "pbcopy",
        ["*"] = "pbcopy",
      },
      paste = {
        ["+"] = "pbpaste",
        ["*"] = "pbpaste",
      },
      cache_enabled = 0
    }
    vim.g.python_host_prog = '/usr/bin/python'
    vim.g.python3_host_prog = '/usr/local/bin/python3'
  end
  for name, value in pairs(global_local) do
    vim.o[name] = value
  end
  bind_option(bw_local)
end

load_options()


-- delete should not cut data. <leader>d can be used the way d was used previously
vim.cmd('nnoremap x "_x')
vim.cmd('nnoremap d "_d')
vim.cmd('nnoremap D "_D')
vim.cmd('vnoremap d "_d')

-- Vmap for maintain Visual Mode after shifting > and <
vim.cmd('vmap < <gv')
vim.cmd('vmap > >gv')

-- vim.cmd('let g:nvim_tree_git_hl = 1')
vim.cmd('nmap <silent> <F3> :NvimTreeToggle<CR>')


vim.api.nvim_exec([[
" silent! colorscheme base16-onedark
set termguicolors

nnoremap <silent> <leader>b :Buffers<CR>

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" nnoremap <silent> <leader>s :Rg -m<CR>

" augroup fmt
"   autocmd!
"   autocmd BufWritePre * undojoin | Neoformat
" augroup END

highlight link CompeDocumentation NormalFloat

nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>

let g:haskell_enable_quantification = 1   " to enable highlighting of `forall`
let g:haskell_enable_recursivedo = 1      " to enable highlighting of `mdo` and `rec`
let g:haskell_enable_arrowsyntax = 1      " to enable highlighting of `proc`
let g:haskell_enable_pattern_synonyms = 1 " to enable highlighting of `pattern`
let g:haskell_enable_typeroles = 1        " to enable highlighting of type roles
let g:haskell_enable_static_pointers = 1  " to enable highlighting of `static`
let g:haskell_backpack = 1                " to enable highlighting of backpack keywords

let g:ormolu_ghc_opt=["TypeApplications", "RankNTypes"]
let g:neoformat_enabled_haskell = ['ormolu']

let g:LanguageClient_rootMarkers = ['*.cabal', 'stack.yaml', '.git/','package.json','.gitignore']

let g:tmux_navigator_no_mappings = 1

nnoremap <silent> <c-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <c-j> :TmuxNavigateDown<cr>
nnoremap <silent> <c-k> :TmuxNavigateUp<cr>
nnoremap <silent> <c-l> :TmuxNavigateRight<cr>
nnoremap <silent> <c-p> :TmuxNavigatePrevious<cr>


set lazyredraw            " improve scrolling performance when navigating through large results
set regexpengine=1        " use old regexp engine
set ignorecase smartcase  " ignore case only when the pattern contains no capital letters

" shortcut for far.vim find
nnoremap <silent> <Find-Shortcut>  :Farf<cr>
vnoremap <silent> <Find-Shortcut>  :Farf<cr>

" shortcut for far.vim replace
nnoremap <silent> <Replace-Shortcut>  :Farr<cr>
vnoremap <silent> <Replace-Shortcut>  :Farr<cr>


nnoremap <leader>xx <cmd>TroubleToggle<cr>
nnoremap <leader>xw <cmd>TroubleToggle lsp_workspace_diagnostics<cr>
nnoremap <leader>xd <cmd>TroubleToggle lsp_document_diagnostics<cr>
nnoremap <leader>xq <cmd>TroubleToggle quickfix<cr>
nnoremap <leader>xl <cmd>TroubleToggle loclist<cr>
nnoremap gR <cmd>TroubleToggle lsp_references<cr>

imap <silent><script><expr> <C-J> copilot#Accept("\<CR>")
"let g:copilot_no_tab_map = v:true

]], false)

vim.g.bubbly_tabline = 1
vim.g.nvcode_termcolors=256

vim.cmd('set norelativenumber')
vim.cmd('set nornu')

local cmd = vim.cmd


require('onedarkpro').load()
