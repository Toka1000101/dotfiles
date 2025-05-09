local lsp_zero = require('lsp-zero')
local lspconfig = require('lspconfig')
local cmp = require('cmp')

lsp_zero.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp_zero.default_keymaps({buffer = bufnr})
end)


require('mason').setup({})

require('mason-lspconfig').setup({
  ensure_installed = {'angularls','ts_ls', 'lua_ls','clangd','jdtls', 'gopls' },
  handlers = {
    function(server_name)
			lspconfig[server_name].setup({})
    end,
  },
})

cmp.setup({
	mapping = cmp.mapping.preset.insert({
		['<Tab>'] = cmp.mapping.confirm({select = true})
	})
})
