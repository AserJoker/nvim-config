local function setup()
  require 'nvim-treesitter.configs'.setup {
    highlight = {
      enable = true,
      additional_vim_regex_highlighting = false
    },
    indent = {
      enable = true
    },
    incremental_selection = { enable = true }
  }
end
return { setup = setup }
