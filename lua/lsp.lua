local execute = vim.api.nvim_command
local fn = vim.fn

local lspkind = require('lspkind')
lspkind.init({})

local nvim_lsp = require('lspconfig')

local cmp = require'cmp'
  cmp.setup({
  formatting = {
    format = lspkind.cmp_format({with_text = true, maxwidth = 50}),
  },
    snippet = {
      expand = function(args)
        -- For `vsnip` user.
        vim.fn["vsnip#anonymous"](args.body)
      end,
    },
    mapping = {
      ['<C-d>'] = cmp.mapping.scroll_docs(-4),
      ['<C-f>'] = cmp.mapping.scroll_docs(4),
      ['<C-Space>'] = cmp.mapping.complete(),
      ['<C-e>'] = cmp.mapping.close(),
      ['<CR>'] = cmp.mapping.confirm({ select = true }),
      ['<Tab>'] = cmp.mapping(cmp.mapping.select_next_item(), { 'i', 's' }),
      ['<S-Tab>'] = cmp.mapping(cmp.mapping.select_prev_item(), { 'i', 's' }),
    },
    sources = {
      { name = 'nvim_lsp' },

      -- For vsnip user.
      { name = 'vsnip' },

      { name = 'buffer' },
      { name = 'path' },

    }
  })

local saga = require 'lspsaga'
saga.init_lsp_saga()

local lsp_status = require('lsp-status')
lsp_status.register_progress()


local on_attach = function(client, bufnr)
  lsp_status.on_attach(client, bufnr)

  local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
  local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

  buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings.
  local opts = { noremap=true, silent=true }
  buf_set_keymap('n', 'gD', '<Cmd>lua vim.lsp.buf.declaration()<CR>', opts)
  buf_set_keymap('n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)
  -- buf_set_keymap('n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>', opts)
  buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
  -- buf_set_keymap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
  buf_set_keymap('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
  buf_set_keymap('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
  buf_set_keymap('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
  buf_set_keymap('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
  -- buf_set_keymap('n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
  buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
  -- buf_set_keymap('n', '<space>e', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts)
  -- buf_set_keymap('n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
  -- buf_set_keymap('n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
  buf_set_keymap('n', '<space>q', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)


  buf_set_keymap('n', 'gh', "<cmd>lua require'lspsaga.provider'.lsp_finder()<CR>", opts)
  buf_set_keymap('n', '<space>ca', "<cmd>lua require'lspsaga.codeaction'.code_action()<CR>", opts)
  buf_set_keymap('v', '<space>ca', ":<C-U>lua require'lspsaga.codeaction'.code_action()<CR>", opts)
  buf_set_keymap('n', 'K', "<cmd>lua require'lspsaga.hover'.render_hover_doc()<CR>", opts)
  buf_set_keymap('n', '<Tab>', "<cmd>lua require'lspsaga.action'.smart_scroll_with_saga(1)<CR>", opts)
  buf_set_keymap('n', '<S-Tab>', "<cmd>lua require'lspsaga.action'.smart_scroll_with_saga(-1)<CR>", opts)
  buf_set_keymap('n', 'gs', "<cmd>lua require'lspsaga.signaturehelp'.signature_help()<CR>", opts)
  buf_set_keymap('n', '<space>rn', "<cmd>lua require'lspsaga.rename'.rename()<CR>", opts)
  buf_set_keymap('n', '<space>gd', "<cmd>lua require'lspsaga.provider'.preview_definition()<CR>", opts)
  buf_set_keymap('n', '<space>e', "<cmd>lua require'lspsaga.diagnostic'.show_line_diagnostics()<CR>", opts)
  buf_set_keymap('n', '[e', '<cmd>lua require"lspsaga.diagnostic".lsp_jump_diagnostic_prev()<CR>', opts)
  buf_set_keymap('n', ']e', '<cmd>lua require"lspsaga.diagnostic".lsp_jump_diagnostic_next()<CR>', opts)


  -- Set some keybinds conditional on server capabilities
  if client.resolved_capabilities.document_formatting then
    buf_set_keymap("n", "<space>f", "<cmd>lua vim.lsp.buf.formatting()<CR>", opts)
  elseif client.resolved_capabilities.document_range_formatting then
    buf_set_keymap("n", "<space>f", "<cmd>lua vim.lsp.buf.formatting()<CR>", opts)
  end

  -- Set autocommands conditional on server_capabilities
  if client.resolved_capabilities.document_highlight then
    vim.api.nvim_exec([[
      hi LspReferenceRead cterm=bold ctermbg=red guibg=LightYellow
      hi LspReferenceText cterm=bold ctermbg=red guibg=LightYellow
      hi LspReferenceWrite cterm=bold ctermbg=red guibg=LightYellow
      augroup lsp_document_highlight
        autocmd! * <buffer>
        autocmd CursorHold <buffer> lua vim.lsp.buf.document_highlight()
        autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()
      augroup END
    ]], false)
  end
end

-- Use a loop to conveniently both setup defined servers
-- and map buffer local keybindings when the language server attaches
local servers = { "rust_analyzer", "tsserver", "gopls", "hls", }
local capabilities = lsp_status.capabilities
-- capabilities.textDocument.completion.completionItem.snippetSupport = true
capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
for _, lsp in ipairs(servers) do
  nvim_lsp[lsp].setup { on_attach = on_attach, capabilities = capabilities }
end


require('lspfuzzy').setup {}
require'nvim-treesitter.configs'.setup {
  ensure_installed = {'javascript', 'go', 'html', 'css', 'rust', 'typescript', 'bash','haskell'},
  highlight = {
    enable = true
  },
  indent = {
    enable = true
  }
}
require'nvim-treesitter.install'.compilers = { "gcc-11" }
