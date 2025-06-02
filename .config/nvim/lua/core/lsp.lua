local lsp_zero = require('lsp-zero')
local cmp = require('cmp')

lsp_zero.on_attach(function(client, bufnr)
  lsp_zero.default_keymaps({buffer = bufnr})
end)


require('mason').setup({})

require('mason-lspconfig').setup({
  ensure_installed = {'lua_ls','clangd', 'gopls' },
  handlers = {
    function(server_name)
			lsp_zero.default_setup(server_name)
    end,
  },
})

cmp.setup({
	mapping = cmp.mapping.preset.insert({
		['<Tab>'] = cmp.mapping.confirm({select = true})
	})
})
