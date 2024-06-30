local lsp_zero = require('lsp-zero')
local lspconfig = require('lspconfig')

lsp_zero.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp_zero.default_keymaps({buffer = bufnr})
end)


require('mason').setup({})

require('mason-lspconfig').setup({
  ensure_installed = {'kotlin_language_server', 'lua_ls'},
  handlers = {
    function(server_name)
			-- lspconfig.lua_ls.setup{}
			-- lspconfig.kotlin_language_server.setup{}
			lspconfig[server_name].setup({})
    end,
  },
})
