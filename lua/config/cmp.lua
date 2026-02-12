local function setup()
  local cmp = require 'cmp'
  cmp.setup({
    mapping = cmp.mapping.preset.insert({
      ['<C-Space>'] = cmp.mapping.complete(),
      ['<ESC>'] = cmp.mapping.abort(),
      ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
      ['<Tab>'] = cmp.mapping.select_next_item(),
      ['<S-Tab>'] = cmp.mapping.select_next_item()
    }),
    sources = cmp.config.sources({
      { name = "nvim_lsp" },
      { name = 'buffer' },
    })
  })
end
return { setup = setup }
