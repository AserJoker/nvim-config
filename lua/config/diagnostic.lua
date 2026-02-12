local function setup()
  require("tiny-inline-diagnostic").setup({
    options = {
      multilines = {
        enabled = true,
      },
    },
  })
  vim.diagnostic.config({ virtual_text = false })
end
return { setup = setup }
