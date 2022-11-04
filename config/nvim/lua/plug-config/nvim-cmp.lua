local cmp = require'cmp'

cmp.setup({
	window = {
		-- completion = cmp.config.window.bordered(),
		-- documentation = cmp.config.window.bordered(),
	},
	preselect = cmp.PreselectMode.None,
	mapping = cmp.mapping.preset.insert({
		['<C-b>'] = cmp.mapping.scroll_docs(-4),
		['<C-f>'] = cmp.mapping.scroll_docs(4),
		['<C-Space>'] = cmp.mapping.complete(),
		['<C-e>'] = cmp.mapping.abort(),
		-- ['<CR>'] = cmp.mapping.confirm({ select = true }),
		['<CR>'] = cmp.mapping.confirm({ 
			behavior = cmp.ConfirmBehavior.Replace,
			select = true
		}),
		["<S-Tab>"] = cmp.mapping.select_prev_item(),
		["<Tab>"] = cmp.mapping({
			i = function(_)
				if cmp.visible() then
					cmp.select_next_item({ behavior = cmp.SelectBehavior.Insert })
				end
			end,
		}),
	}),


	sources = cmp.config.sources({
		{ name = 'nvim_lsp' },
		{ name = 'buffer' },
	})
})

-- Use buffer source for `/`
cmp.setup.cmdline('/', {
	mapping = cmp.mapping.preset.cmdline(),
	sources = {
		{ name = 'buffer' }
	}
})

-- Use cmdline & path source for ':'
cmp.setup.cmdline(':', {
	mapping = cmp.mapping.preset.cmdline(),
	sources = cmp.config.sources({
		{ name = 'path' }
	}, {
		{ name = 'cmdline' }
	})
})

-- Setup lspconfig.
local capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())

-- Enabled lsp servers
require('lspconfig')['pyright'].setup {
	capabilities = capabilities
}

require('lspconfig')['clangd'].setup {
	capabilities = capabilities
}

require('lspconfig')['html'].setup {
	capabilities = capabilities
}

require('lspconfig')['cssls'].setup {
	capabilities = capabilities
}

require('lspconfig')['jsonls'].setup {
	capabilities = capabilities
}

require('lspconfig')['bashls'].setup {
	capabilities = capabilities
}
