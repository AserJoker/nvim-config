local function setup()
  require 'toggleterm'.setup {
    shell = "powershell"
  }
  vim.keymap.set("n", "<leader>t", ":ToggleTerm<CR>")
end

return { setup = setup }
