local pattern = "^%%(.-)-?(%u*): (.-):(%d+):(%d+): (.*)"
local groups = { "severity", "code", "file", "lnum", "col", "message" }

local severities = {
	["Error"] = vim.diagnostic.severity.ERROR,
	["Warning"] = vim.diagnostic.severity.WARN,
}

require("lint").linters.custom_linter = {
	name = "custom_linter",
	cmd = "make",
	stdin = false,
	append_fname = false,
	stream = "stderr",
	args = {
		"lint",
	},
	ignore_exitcode = true,
	parser = require("lint.parser").from_pattern(pattern, groups, severities, { ["source"] = "verilator" }),
}

vim.keymap.set("n", "<leader>lp", function()
	vim.cmd(":w")
	require("lint").try_lint("custom_linter")
end, { desc = "[L]int [P]roject" })

require("lint").linters_by_ft = {
	verilog = { "custom_linter" },
	systemverilog = { "custom_linter" },
}
