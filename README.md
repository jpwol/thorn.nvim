# Thorn

A dark theme for [neovim](https://github.com/neovim/neovim). Features rich greens and subtle contrast to make a simple, _easy on the eyes_ theme.

![example 1](assets/thorn-example1.png)
![example 2](assets/thorn-example2.png)

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
    opts = {}
}
```

[packer.nvim](https://github.com/wbthomason/packer.nvim)

```lua
use {
    "jpwol/thorn.nvim",
    config = function()
        require("thorn").setup({})
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

_thorn_ provides a few customization options right now, as well as a way to change the color/style of any highlight group of your choosing.

In your _lazy_ plugin,

```lua
return {
    "jpwol/thorn.nvim",
    lazy = false,
    priority = 1000,
    opts = {
        style = "dark", -- currently doesn't do anything

        italic_keywords = true,

        italic_comments = true,

        italic_strings = true,

        diagnostic_text_highlight = true,

        on_highlights = function(hl, palette)
        end,
    },
}
```

Where `on_highlights` will be a function, and you can edit any highlight group using `hl.<Highlight Group>.<attribute> = <option>`. An example of this would be:

```lua
on_highlight = function(hl, palette)
    hl.String.bold = true
    hl.Function.fg = "#ffffff"
end
```

This would be similar with _packer_, but instead of `opts = {}` you would put the contents of the table within `setup({})`.
