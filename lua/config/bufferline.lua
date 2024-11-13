local function setup()
  require 'bufferline'.setup { options = {
    themable = true,
    offsets = {
      {
        filetype = "NvimTree",
        text = "File Explorer",
        text_align = "left",
        separator = true
      }
    },
    hover = {
      enabled = true,
      delay = 200,
      reveal = { "close" }
    }
  }
  }
end
return { setup = setup }
