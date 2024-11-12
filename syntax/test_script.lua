local M = {}

local syntax = vim.api.nvim_create_namespace("test_script")

vim.api.nvim_command("syntax clear")

-- Keywords
vim.api.nvim_command("syntax keyword test_scriptKeyword let const for in")

-- Identifiers
vim.api.nvim_command("syntax match test_scriptIdentifier /\\w[\\w\\d]\\+/")

-- Operators
vim.api.nvim_command("syntax match test_scriptOperator /[+\\-*\\/=]\\+/")

-- String
vim.api.nvim_command('syntax region test_scriptString start=/"/ end=/"/ contains=test_scriptEscape')

-- Numbers
vim.api.nvim_command("syntax match test_scriptNumber /[^\\w]\\d\\+/")

-- Comments
vim.api.nvim_command("syntax match test_scriptComment /\\/.*$/")

-- Link groups to highlight groups
vim.api.nvim_command("highlight default link test_scriptKeyword Keyword")
vim.api.nvim_command("highlight default link test_scriptIdentifier Identifier")
vim.api.nvim_command("highlight default link test_scriptOperator Operator")

vim.api.nvim_command("highlight default link test_scriptString String")
vim.api.nvim_command("highlight default link test_scriptNumber Number")
vim.api.nvim_command("highlight default link test_scriptComment Comment")

return M
