-- In your plugin's lua file (e.g., lua/highlighter/init.lua)
local M = {}

-- Configure the parser
M.setup = function(opts)
	local parser_config = require("nvim-treesitter.parsers").get_parser_configs()

	-- Register your custom parser
	parser_config.your_language = {
		install_info = {
			url = "path/to/your/tree-sitter-your-language", -- Local path or GitHub URL
			files = { "src/parser.c" }, -- Parser source files
			branch = "main",
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
			additional_vim_regex_highlighting = false,
		},
	})
end

-- Configure filetype detection
vim.filetype.add({
	extension = {
		test_script = "tesc", -- Map file extension to filetype
	},
})

return M
