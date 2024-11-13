require 'config.lazy'.setup({
  { "Mofiqul/dracula.nvim" },
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { 'nvim-tree/nvim-web-devicons' }
  },
  { "nvim-tree/nvim-tree.lua" },
  { "akinsho/bufferline.nvim" },
  { 'folke/tokyonight.nvim' },
  { 'neovim/nvim-lspconfig' },
  { 'williamboman/mason.nvim' },
  { 'williamboman/mason-lspconfig.nvim' },
  { 'akinsho/toggleterm.nvim' },
  { 'hrsh7th/nvim-cmp',                 dependencies = { 'onsails/lspkind.nvim' } },
  { 'hrsh7th/cmp-nvim-lsp' },
  { 'hrsh7th/cmp-buffer' },
  { 'hrsh7th/cmp-path' },
  { 'hrsh7th/cmp-cmdline' },
  { 'L3MON4D3/LuaSnip' },
  { 'saadparwaiz1/cmp_luasnip' },
  { 'rafamadriz/friendly-snippets' },
  { 'onsails/lspkind.nvim' },
  { 'hrsh7th/vim-vsnip' },
  { 'hrsh7th/cmp-vsnip' },
  { 'nvimdev/lspsaga.nvim' },
  { 'nvim-treesitter/nvim-treesitter' },
  { '0x00-ketsu/autosave.nvim' },
  { 'jose-elias-alvarez/null-ls.nvim',  dependencies = { 'nvim-lua/plenary.nvim', 'lewis6991/gitsigns.nvim' } },
  { 'akinsho/toggleterm.nvim' },
  { 'kdheepak/lazygit.nvim' }
})
require 'config.lualine'.setup()
require 'config.nvim-tree'.setup()
require 'config.vim'.setup()
require 'config.bufferline'.setup()
require 'config.mason'.setup()
require 'config.auto-save'.setup()
require 'config.terminal'.setup()
require 'config.git'.setup()

require 'config.tree-sitter'.setup()
require 'config.lspsaga'.setup()
require 'config.cmp'.setup()
require 'languages.lua'.setup()
require 'config.null-ls'.setup()
