local function setup()
  local capabilities = require('cmp_nvim_lsp').default_capabilities()
  vim.lsp.config('lua_ls', {
    capabilities = capabilities
  })
  vim.lsp.enable('lua_ls')
end
return { setup = setup }
