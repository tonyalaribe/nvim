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
    signcolumn     = "no";
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
    signcolumn     = "no";
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
silent! colorscheme gruvbox 

nnoremap <silent> <leader>b :Buffers<CR>
au ColorScheme * highlight ColorColumn ctermbg=0 guibg=darkgrey

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

nnoremap <silent> <leader>f :Rg -m<CR>

augroup fmt
  autocmd!
  autocmd BufWritePre * undojoin | Neoformat
augroup END

au ColorScheme * hi Cursor guifg=Black guibg=Yellow
au ColorScheme * hi Question guifg=springgreen
au ColorScheme * hi Search guibg=#0099ff guifg=White
au ColorScheme * hi Visual gui=none guifg=khaki guibg=olivedrab
au ColorScheme * hi TSTitle guifg=#ff9900 gui=bold ctermfg=208 cterm=bold
au ColorScheme * hi Title guifg=#ff9900 gui=bold ctermfg=208 cterm=bold
au ColorScheme * hi TSStatement guifg=#ff6600 ctermfg=202
au ColorScheme * hi htmlStatement guifg=#61c3fe ctermfg=39
au ColorScheme * hi TSString guifg=#99ec5c ctermfg=155
au ColorScheme * hi TSComment guifg=grey35 ctermfg=240
au ColorScheme * hi TSCommentDoc guifg=grey50 ctermfg=244
au ColorScheme * hi TSConditional guifg=#ffee14 ctermfg=226
au ColorScheme * hi TSConstant guifg=#cbfe29 ctermfg=190
au ColorScheme * hi TSSpecial guifg=#86A7D0 ctermfg=110
au ColorScheme * hi TSIdentifier guifg=#ff9900 gui=bold ctermfg=208 cterm=bold
au ColorScheme * hi TSInclude guifg=#ffde00 ctermfg=220
au ColorScheme * hi TSPreProc guifg=grey ctermfg=grey
au ColorScheme * hi TSOperator gui=bold guifg=#ff9900 ctermfg=208 cterm=bold
au ColorScheme * hi TSDefine guifg=#ffde00 gui=bold ctermfg=220 cterm=bold
au ColorScheme * hi TSType guifg=#61c3fe ctermfg=39
au ColorScheme * hi Function guifg=#ffde00 gui=NONE ctermfg=220
au ColorScheme * hi TSStructure gui=bold guifg=#ff6600 ctermfg=202 cterm=bold
au ColorScheme * hi TSIgnore guifg=grey40 ctermfg=241
au ColorScheme * hi TSStatusLineNC guibg=#c2bfa5 guifg=grey40 gui=none ctermfg=241
au ColorScheme * hi TSStatusLine guibg=#c2bfa5 guifg=black gui=bold
au ColorScheme * hi TSTodo guifg=orangered guibg=yellow2
au ColorScheme * hi TSError guifg=#990000 guibg=#ffeaea ctermfg=88 ctermbg=224
au ColorScheme * hi TSSpellErrors guifg=White guibg=Red
au ColorScheme * hi TSWarningMsg guifg=#990000 ctermfg=88
au ColorScheme * hi TSErrorMsg guifg=#990000 guibg=#ffeaea ctermfg=88 ctermbg=224


au ColorScheme * highlight TSText guifg=#99ec5c
au ColorScheme * highlight TSFuncBuiltin guifg=#ffde00
au ColorScheme * highlight TSFunction guifg=#ffde00
au ColorScheme * highlight TSFuncMacro guifg=#ffde00
au ColorScheme * highlight TSParameter guifg=#9CDCFE



]], false)

vim.api.nvim_command('au ColorScheme * hi Normal guibg=NONE ctermbg=NONE guifg=#ffffff')
vim.api.nvim_command('au ColorScheme * hi NonText guibg=NONE ctermbg=NONE')

vim.g.bubbly_tabline = 1
vim.g.nvim_tree_auto_open = 1
vim.g.nvcode_termcolors=256

