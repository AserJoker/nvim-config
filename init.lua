require 'config.lazy'.setup({
	{ "Mofiqul/dracula.nvim" },
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { 'nvim-tree/nvim-web-devicons' }
	},
	{ "nvim-tree/nvim-tree.lua" },
	{ "akinsho/bufferline.nvim" },
	{ 'folke/tokyonight.nvim' },
	{ 'williamboman/mason.nvim' },
	{ 'williamboman/mason-lspconfig.nvim' },
	{ '0x00-ketsu/autosave.nvim' },
	{ 'kdheepak/lazygit.nvim' },
	{ 'neovim/nvim-lspconfig' },
	{ 'hrsh7th/nvim-cmp' },
	{ 'hrsh7th/cmp-nvim-lsp' },
	{ 'rachartier/tiny-inline-diagnostic.nvim' }
})
require 'config.lualine'.setup()
require 'config.nvim-tree'.setup()
require 'config.vim'.setup()
require 'config.bufferline'.setup()
require 'config.mason'.setup()
require 'config.auto-save'.setup()
require 'config.cmp'.setup()
require 'config.diagnostic'.setup()

require 'language.lua'.setup()
