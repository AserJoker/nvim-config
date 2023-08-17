require("dapui").setup()
local api = require("nvim-tree.api")

local dap, dapui = require("dap"), require("dapui")

vim.fn.sign_define("DapBreakpoint", { text = "", texthl = "", linehl = "", numhl = "" })
vim.fn.sign_define("DapCurrent", { text = "", texthl = "", linehl = "", numhl = "" })
dap.listeners.after.event_initialized["dapui_config"] = function()
	api.tree.close()
	dapui.open()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
	dapui.close()
	api.tree.open()
end
dap.listeners.before.event_exited["dapui_config"] = function()
	dapui.close()
	api.tree.open()
end

require("nvim-dap-virtual-text").setup()
