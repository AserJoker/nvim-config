local function setup()
  require 'gitsigns'.setup {}
  vim.keymap.set('n', '<leader>gg', ':LazyGit<CR>')
end
return { setup = setup }
