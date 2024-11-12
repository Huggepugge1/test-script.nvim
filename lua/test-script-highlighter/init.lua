local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
parser_config.test_script = {
	install_info = {
		-- Change this url to your grammar
		url = "https://github.com/Huggepugge1/test-script-parser",
		-- If you use an external scanner it needs to be included here
		files = { "src/parser.c", "src/scanner.c" },
		generate_reqires_npm = false,
		requires_generate_from_grammar = false,
	},
	-- The filetype you want it registered as
	filetype = "tesc",
}
