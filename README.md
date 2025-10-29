<h1 align="center">
    Thorn<br/>
    <img height="150" src="https://raw.githubusercontent.com/jpwol/thorn.nvim/main/.github/images/thorn_logo.png" />
</h1>
<div align="center">
    <img src="https://raw.githubusercontent.com/jpwol/thorn.nvim/main/.github/images/thorn_themes.png" />
</div>

## Previews

<details>
    <summary> Dark Warm </summary>
    <img src="https://raw.githubusercontent.com/jpwol/thorn.nvim/main/.github/images/thorn_dark_warm.png" />
</details>
<details>
    <summary> Dark Cold </summary>
    <img src="https://raw.githubusercontent.com/jpwol/thorn.nvim/main/.github/images/thorn_dark_cold.png" />
</details>
<details>
    <summary> Light Warm </summary>
    <img src="https://raw.githubusercontent.com/jpwol/thorn.nvim/main/.github/images/thorn_light_warm.png" />
</details>
<details>
    <summary> Light Cold </summary>
    <img src="https://raw.githubusercontent.com/jpwol/thorn.nvim/main/.github/images/thorn_light_cold.png" />
</details>

## Features

- Written in 100% Lua
- **Dark** and **Light** themes available, each with a _warm_ and _cold_ background
  - See [Configuration](#configuration) for details
- Supports
  - Treesitter
  - LSP
  - [lazy.nvim](https://github.com/folke/lazy.nvim)
  - [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
  - [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
  - [trouble.nvim](https://github.com/folke/trouble.nvim)
  - [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
  - [nvim-tree.lua](https://github.com/nvim-tree/nvim-tree.lua)
  - [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)
  - [bufferline.nvim](https://github.com/akinsho/bufferline.nvim)
  - [snacks.nvim](https://github.com/folke/snacks.nvim)
  - [render-markdown.nvim](https://github.com/MeanderingProgrammer/render-markdown.nvim)
- Comes with added themes for **other applications**!
  - [Ghostty](https://github.com/ghostty-org/ghostty)
  - [Kitty](https://github.com/kovidgoyal/kitty)
  - [Alacritty](https://github.com/alacritty/alacritty)
  - [Btop](https://github.com/aristocratos/btop)

If you want support for a plugin, please ask for it and it **WILL** be added!

## Installation

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

## Usage

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

## Configuration

_thorn_ provides a good amount of customization options, as well as a way to change the color/style of any highlight group of your choosing.

In your plugin setup ([lazy.nvim](https://github.com/folke/lazy.nvim) plugin structure used as reference),

```lua
return {
    "jpwol/thorn.nvim",
    lazy = false,
    priority = 1000,
    opts = {
        theme = nil, -- 'light' or 'dark' - defaults to vim.o.background if unset
        background = "warm" -- options are 'warm' and 'cold'

        styles = {
            keywords = { italics = true, bold = false },
            comments = { italics = true, bold = false },
            strings  = { italics = true, bold = false },

            diagnostic = {
                underline = true, -- if true, flat underlines will be used. Otherwise, undercurls will be used

                -- true will apply the bg highlight, false applies the fg highlight
                error = { highlight = true, },
                hint  = { highlight = false, },
                info  = { highlight = false, },
                warn  = { highlight = false, },
            },
        },

        transparent = false, -- transparent background

        on_highlights = function(hl, palette) end, -- apply your own highlights
    },
}
```

Where `on_highlights` will be a function, and you can edit any highlight group using `hl.<Highlight Group>.<attribute> = <option>`. An example of this would be:

```lua
on_highlights = function(hl, palette)
    hl.String.bold = true
    hl.Function.fg = "#ffffff"
end
```
