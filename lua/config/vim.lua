local function setup()
  vim.g.mapleader = " "
  vim.cmd.colorscheme "tokyonight-storm"

  vim.o.number = true
  vim.o.tabstop = 2
  vim.o.softtabstop = 2
  vim.o.shiftwidth = 2
  vim.o.relativenumber = true
  vim.o.cmdheight = 1
  vim.o.expandtab = true
  vim.o.autoindent = true
  vim.o.wrap = false
  vim.o.cursorline = true
  vim.o.mouse = vim.o.mouse .. "a"
  vim.o.clipboard = "unnamedplus"
  vim.o.splitright = true;
  vim.o.splitbelow = true;
  vim.o.ignorecase = true;
  vim.o.smartcase = true;
  vim.o.termguicolors = true;
  vim.o.signcolumn = "yes"

  vim.keymap.set("i", "jk", "<ESC>")
  vim.keymap.set("n", "<leader>sv", "<C-w>v")
  vim.keymap.set("n", "<leader>sh", "<C-w>s")
  vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")
  vim.keymap.set("n", "<leader>x", ":x<CR>")
  vim.keymap.set("n", "<leader>nh", ":nohl<CR>");

  vim.keymap.set("n", "<C-h>", "<C-w><Left>")
  vim.keymap.set("n", "<C-l>", "<C-w><Right>")
  vim.keymap.set("n", "<C-k>", "<C-w><Up>")
  vim.keymap.set("n", "<C-j>", "<C-w><Down>")
  vim.keymap.set("n", "<leader>fmt", ":normal gg=G<CR>")

  vim.api.nvim_create_autocmd("BufWritePre", {
    command = "lua vim.lsp.buf.format()"
  })
end
return { setup = setup }
