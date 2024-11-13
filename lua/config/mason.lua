local function setup()
  require 'mason'.setup({
    log_level = vim.log.levels.DEBUG,
    pip = {
      install_args = { '--proxy', 'http://w30029682:19980108wjf+-@proxy.huawei.com:8080/' }
    }
  })
end
return { setup = setup }
