require("nvim-treesitter.configs").setup({
	ensure_installed = { "vim", "bash", "c", "cpp", "javascript", "json", "lua", "python", "go" ,"markdown","markdown_inline"},
	highlight = { enable = true },
	indent = { enable = true },
	rainbow = {
		enable = true,
		extended_mode = true,
		max_file_lines = nil,
	},
})
