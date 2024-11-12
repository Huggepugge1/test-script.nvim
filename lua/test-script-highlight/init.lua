local M = {}

function M.setup(opts)
	opts = opts or {}

	-- Register the parser with Tree-sitter
	local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
	parser_config.test_script = {
		install_info = {
			url = "local", -- Will be replaced with GitHub URL once published
			files = { "src/parser.c" },
		},
		filetype = "test-script",
	}

	-- Setup highlighting
	require("nvim-treesitter.configs").setup({
		ensure_installed = { "test-script" },
		highlight = {
			enable = true,
			additional_vim_regex_highlighting = false,
		},
	})
end

return M
