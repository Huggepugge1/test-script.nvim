vim.api.nvim_create_autocmd({ "BufRead,BufNewFile" }, {
	pattern = "*.tesc",
	callback = function()
		vim.bo.filetype = "test_script"
	end,
})
