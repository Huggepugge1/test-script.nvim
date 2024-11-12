# test-script-highlight.nvim

Tree-sitter based syntax highlighting for the Test Script language.

## Installation
Using [lazy.nvim](https://github.com/folke/lazy.nvim):
```lua
{
    "yourgithubusername/test-script-highlight.nvim",
    dependencies = {
        "nvim-treesitter/nvim-treesitter",
    },
    build = ":TSUpdate",
}
```

Using [packer.nvim](https://github.com/wbthomason/packer.nvim):
```lua
use {
    'yourgithubusername/test-script-highlight.nvim',
    requires = {
        'nvim-treesitter/nvim-treesitter'
    },
    run = ':TSUpdate'
}
```

## Configuration
Add to your init.lua:
```lua
require('test-script-highlight').setup({
    -- Optional configuration options here
})
```

## Features
- Full syntax highlighting for Test Script
- Tree-sitter based parsing
- Semantic highlighting
