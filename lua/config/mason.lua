local function setup()
  require 'mason'.setup({
    log_level = vim.log.levels.DEBUG,
    pip = {
    }
  })
end
return { setup = setup }
