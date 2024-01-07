local dap = require("dap")

dap.adapters.lldb = {
	name = "lldb",
	type = "executable",
	command = "/opt/homebrew/opt/llvm/bin/lldb-vscode",
}
dap.configurations.c = {
	{
		name = "Launch Debugger",
		type = "lldb",
		request = "launch",
		program = function()
			return vim.fn.getcwd() .. "/bin/Debug/test"
		end,
		cwd = "${workspaceFolder}",
		stopOnEntry = false,
		args = {},
	},
}
