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
    signcolumn     = "yes";
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
    number         = true;
    colorcolumn    = "80";
    foldenable     = true;
    signcolumn     = "yes";
    conceallevel   = 2;
    concealcursor  = "niv";
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

vim.cmd('let g:nvim_tree_git_hl = 1')
vim.cmd('nmap <silent> <F3> :NvimTreeToggle<CR>')


vim.api.nvim_exec([[
" silent! colorscheme base16-onedark
set termguicolors

nnoremap <silent> <leader>b :Buffers<CR>
" au ColorScheme * highlight ColorColumn ctermbg=0 guibg=black

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" nnoremap <silent> <leader>f :Rg -m<CR>

" augroup fmt
"   autocmd!
"   autocmd BufWritePre * undojoin | Neoformat
" augroup END

highlight link CompeDocumentation NormalFloat

nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>

"""" nvim-lua/ completion-nvim
" Use <Tab> and <S-Tab> to navigate through popup menu
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Set completeopt to have a better completion experience
set completeopt=menuone,noinsert,noselect

" Avoid showing message extra message when using completion
set shortmess+=c

imap <tab> <Plug>(completion_smart_tab)
imap <s-tab> <Plug>(completion_smart_s_tab)


let g:haskell_enable_quantification = 1   " to enable highlighting of `forall`
let g:haskell_enable_recursivedo = 1      " to enable highlighting of `mdo` and `rec`
let g:haskell_enable_arrowsyntax = 1      " to enable highlighting of `proc`
let g:haskell_enable_pattern_synonyms = 1 " to enable highlighting of `pattern`
let g:haskell_enable_typeroles = 1        " to enable highlighting of type roles
let g:haskell_enable_static_pointers = 1  " to enable highlighting of `static`
let g:haskell_backpack = 1                " to enable highlighting of backpack keywords

let g:ormolu_ghc_opt=["TypeApplications", "RankNTypes"]
let g:neoformat_enabled_haskell = ['ormolu']

let g:tmux_navigator_no_mappings = 1

nnoremap <silent> <c-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <c-j> :TmuxNavigateDown<cr>
nnoremap <silent> <c-k> :TmuxNavigateUp<cr>
nnoremap <silent> <c-l> :TmuxNavigateRight<cr>
nnoremap <silent> <c-p> :TmuxNavigatePrevious<cr>




augroup interoMaps
  au!
  " Maps for intero. Restrict to Haskell buffers so the bindings don't collide.

  " Background process and window management
  au FileType haskell nnoremap <silent> <leader>is :InteroStart<CR>
  au FileType haskell nnoremap <silent> <leader>ik :InteroKill<CR>

  " Open intero/GHCi split horizontally
  au FileType haskell nnoremap <silent> <leader>io :InteroOpen<CR>
  " Open intero/GHCi split vertically
  au FileType haskell nnoremap <silent> <leader>iov :InteroOpen<CR><C-W>H
  au FileType haskell nnoremap <silent> <leader>ih :InteroHide<CR>

  " Reloading (pick one)
  " Automatically reload on save
  au BufWritePost *.hs InteroReload
  " Manually save and reload
  au FileType haskell nnoremap <silent> <leader>wr :w \| :InteroReload<CR>

  " Load individual modules
  au FileType haskell nnoremap <silent> <leader>il :InteroLoadCurrentModule<CR>
  au FileType haskell nnoremap <silent> <leader>if :InteroLoadCurrentFile<CR>

  " Type-related information
  " Heads up! These next two differ from the rest.
  au FileType haskell map <silent> <leader>t <Plug>InteroGenericType
  au FileType haskell map <silent> <leader>T <Plug>InteroType
  au FileType haskell nnoremap <silent> <leader>it :InteroTypeInsert<CR>

  " Navigation
  au FileType haskell nnoremap <silent> <leader>jd :InteroGoToDef<CR>

  " Managing targets
  " Prompts you to enter targets (no silent):
  au FileType haskell nnoremap <leader>ist :InteroSetTargets<SPACE>
augroup END

" Intero starts automatically. Set this if you'd like to prevent that.
let g:intero_start_immediately = 0

" Enable type information on hover (when holding cursor at point for ~1 second).
let g:intero_type_on_hover = 1

" Change the intero window size; default is 10.
let g:intero_window_size = 15

" Sets the intero window to split vertically; default is horizontal
let g:intero_vertical_split = 1

" OPTIONAL: Make the update time shorter, so the type info will trigger faster.
set updatetime=1000
]], false)

-- vim.api.nvim_command('au ColorScheme * hi Normal guibg=NONE ctermbg=NONE guifg=#ffffff')
-- vim.api.nvim_command('au ColorScheme * hi NonText guibg=NONE ctermbg=NONE')

vim.g.bubbly_tabline = 1
vim.g.nvim_tree_auto_open = 1
vim.g.nvcode_termcolors=256
