-- In your plugin's lua file (e.g., lua/highlighter/init.lua)
local M = {}

-- Configure the parser
M.setup = function()
	local parser_config = require("nvim-treesitter.parsers").get_parser_configs()

	-- Configure filetype detection
	vim.filetype.add({
		extension = {
			tesc = "test_script", -- Map file extension to filetype
		},
	})

	-- Register your custom parser
	parser_config.test_script = {
		install_info = {
			url = "https://github.com/Huggepugge1/test-script-parser", -- Local path or GitHub URL
			files = { "src/parser.c" }, -- Parser source files
			branch = "master",
			generate_requires_npm = false, -- Set to true if using Node.js
			requires_generate_from_grammar = false, -- Set to true if grammar needs compilation
		},
		filetype = "test_script", -- The filetype that Neovim should use
	}

	-- Set up highlights
	require("nvim-treesitter.configs").setup({
		ensure_installed = { "test_script" }, -- Add your language to auto-install list
		highlight = {
			enable = true,
			-- Custom queries for highlighting
			additional_vim_regex_highlighting = true,
		},
	})
end

return M
