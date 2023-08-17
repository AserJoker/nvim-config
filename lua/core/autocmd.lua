vim.cmd([[
augroup format_on_save
autocmd!
autocmd BufWritePost * lua vim.lsp.buf.format()
augroup end
]])
vim.cmd([[
augroup packer_user_config
autocmd!
autocmd BufWritePost packer.lua source <afile>  | PackerSync
augroup end
]])
