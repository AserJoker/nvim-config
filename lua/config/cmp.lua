local function setup()
  local cmp = require 'cmp'
  cmp.setup {
    snippet = {
      expand = function(args)
        require 'luasnip'.lsp_expand(args.body)
      end
    },
    sources = cmp.config.sources(
      {
        { name = 'nvim_lsp' },
        { name = 'luasnip' }
      },
      {
        { name = 'buffer' },
        { name = 'path' }
      }
    ),
    formatting = {
      format = require 'lspkind'.cmp_format({
        with_text = true, -- do not show text alongside icons
        maxwidth = 50,    -- prevent the popup from showing more than provided characters (e.g 50 will not show more than 50 characters)
        before = function(entry, vim_item)
          -- Source 显示提示来源
          vim_item.menu = "[" .. string.upper(entry.source.name) .. "]"
          return vim_item
        end
      })
    },
    mapping = {
      -- 上一个
      ['<S-Tab>'] = cmp.mapping.select_prev_item(),
      -- 下一个
      ['<Tab>'] = cmp.mapping.select_next_item(),
      -- 出现补全
      ['<A-.>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
      -- 取消
      ['<A-,>'] = cmp.mapping({
        i = cmp.mapping.abort(),
        c = cmp.mapping.close(),
      }),
      -- 确认
      -- Accept currently selected item. If none selected, `select` first item.
      -- Set `select` to `false` to only confirm explicitly selected items.
      ['<CR>'] = cmp.mapping.confirm({
        select = true,
        behavior = cmp.ConfirmBehavior.Replace
      }),
      -- ['<C-y>'] = cmp.config.disable, -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
      ['<C-u>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
      ['<C-d>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
    }
  }
end
return { setup = setup }
