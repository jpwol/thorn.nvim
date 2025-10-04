# Thorn

A dark theme for [neovim](https://github.com/neovim/neovim). Features rich greens and subtle contrast to make a simple, _easy on the eyes_ theme.

[!example 1](https://github.com/jpwol/thorn.nvim/assets/thorn-example1.png)
[!example 2](https://github.com/jpwol/thorn.nvim/assets/thorn-example2.png)

### Features

---

- Written in 100% Lua
- Supports
  - Treesitter
  - LSP
  - [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
  - [nvim-tree](https://github.com/nvim-tree/nvim-tree.lua)
- Comes with [Lualine](https://github.com/nvim-lualine/lualine.nvim) theme built-in

### Installation

---

[lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
{
    "jpwol/thorn.nvim",
    lazy = false,
    priority = 1000,
    opts = {} -- currently no opts supported
}
```

[packer.nvim](https://github.com/wbthomason/packer.nvim)

```lua
use {
     "jpwol/thorn.nvim",
    -- uneeded currently as no config options exist
    config = function()
        require("thorn").setup()
    end,
}
```

[vim-plug](https://github.com/junegunn/vim-plug)

```lua
Plug 'jpwol/thorn.nvim', { 'branch': 'main' }
```

### Usage

---

```lua
-- after plugin is loaded by your manager
vim.cmd([[colorscheme thorn]])
```

For _LuaLine_

```lua
require("lualine").setup({
    options = {
        theme = "thorn" -- "auto" also detects theme automatically
    }
})
```

### Configuration

---

> [!note]
> Unfortunately, thorn does not provide any configuration options yet. Stay tuned as these will be added eventually.
