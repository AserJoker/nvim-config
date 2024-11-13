local function setup()
  require 'lspconfig'.lua_ls.setup {
    capabilities = require 'cmp_nvim_lsp'.default_capabilities()
  }
end
return { setup = setup }
