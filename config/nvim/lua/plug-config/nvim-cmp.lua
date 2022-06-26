local cmp = require'cmp'

cmp.setup({
	window = {
		-- completion = cmp.config.window.bordered(),
		-- documentation = cmp.config.window.bordered(),
	},
	mapping = cmp.mapping.preset.insert({
		['<C-b>'] = cmp.mapping.scroll_docs(-4),
		['<C-f>'] = cmp.mapping.scroll_docs(4),
		['<C-Space>'] = cmp.mapping.complete(),
		['<C-e>'] = cmp.mapping.abort(),
		['<CR>'] = cmp.mapping.confirm({ select = true }),
		["<S-Tab>"] = cmp.mapping.select_prev_item(),
		-- ["<Tab>"] = cmp.mapping({
		-- 	i = function(_)
		-- 		if cmp.visible() then
		-- 			cmp.select_next_item({ behavior = cmp.SelectBehavior.Insert })
		-- 		elseif vim.fn["UltiSnips#CanJumpForwards"]() == 1 then
		-- 			vim.api.nvim_feedkeys(t("<Plug>(ultisnips_jump_forward)"), 'm', true)
		-- 		else
		-- 			vim.api.nvim_feedkeys(t('<Tab>'), 'n', true)        -- fallback()

		-- 		end
		-- 	end,
		-- }),
	}),

	preselect = cmp.PreselectMode.None,

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
local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

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
