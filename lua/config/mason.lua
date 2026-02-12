local function setup()
  require 'mason'.setup({
    log_level = vim.log.levels.DEBUG,
    pip = {
    }
  })
  require 'mason-lspconfig'.setup({
    ensure_installed = { 'lua_ls' }
  })
end
return { setup = setup }
