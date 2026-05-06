local M = {}

function M.setup(opts)
  if opts.theme == "forest" then
    -- stylua: ignore
    ---@type thorn.Palette
    return {
      bg         = "#172526",
      fg         = "#DBD2C7",

      number     = "#1C3D3C",

      white      = "#DBD2C7",
      gray       = "#9B9A8C",
      green_0    = "#B8CDB6", -- lightblue
      green_1    = "#9EBB9C", -- green1
      green_2    = "#88B497", -- cyan
      green_3    = "#9EC59B", -- lightgreen
      green_4    = "#6FA791", -- green0
      green_5    = "#568270", -- green
      green_6    = "#87CBB1", -- cyan0
      yellow     = "#FFD7AA",
      orange     = "#F2A597",
      blue       = "#91C4C0",
      red        = "#D2696C",

      cursorline = "#1D3334",
      separator  = "#0B1213",

      statusbar  = {
        fg  = "#9EC59B",
        bg  = "#131F20",
        sep = "#233935",
      },

      bg_float   = "#131F20",

      bg_visual  = "#26403E",

      diff = {
        add    = "#1F3329",
        change = "#1E2D39",
        delete = "#33232A",
      },

      git = {
        add    = "#94C68B",
        change = "#6DAAE3",
        delete = "#D8464B",
      },

      terminal = {
        black          = "#172526",
        black_bright   = "#568270",
        white          = "#9B9A8C",
        white_bright   = "#DBD2C7",
        red            = "#D2696C",
        red_bright     = "#D2696C",
        green          = "#6FA791",
        green_bright   = "#6FA791",
        yellow         = "#FFD7AA",
        yellow_bright  = "#FFD7AA",
        blue           = "#91C4C0",
        blue_bright    = "#91C4C0",
        magenta        = "#F9ADA0",
        magenta_bright = "#F9ADA0",
        cyan           = "#87CBB1",
        cyan_bright    = "#87CBB1",
      },

      hbg = {
        "#273634",
        "#243432",
        "#243532",
        "#223331",
        "#203231",
        "#223634",
      },
      hfg = {
        "#B8CDB6",
        "#9EBB9C",
        "#9EC59B",
        "#88B497",
        "#6FA791",
        "#87CBB1",
      },

      none = "NONE",
    }
  elseif opts.theme == "field" then
    -- stylua: ignore
    return {
      bg         = "#F9FDCE",
      fg         = "#3D4A2B",

      number     = "#CCD0A1",

      white      = "#D9D3CE",
      gray       = "#74694E",
      green_0    = "#718C5F", -- lightblue
      green_1    = "#8DAE5A", -- green1
      green_2    = "#6E9948", -- cyan
      green_3    = "#92AC3F", -- lightgreen
      green_4    = "#516F21", -- green0
      green_5    = "#9A9F75", -- green
      green_6    = "#31874D", -- cyan0
      yellow     = "#DCA838",
      orange     = "#CF7859",
      blue       = "#4C8A80",
      red        = "#C5524D",

      cursorline = "#EEF2BA",
      separator  = "#767859",

      statusbar  = {
        fg  = "#3C6746",
        bg  = "#EFF5BD",
        sep = "#CFD69E",
      },

      bg_float   = "#EEF2BA",

      bg_visual  = "#D8E4AF",

      diff = {
        add    = "#E3EEB5",
        change = "#dde4e3",
        delete = "#F0D4CC",
      },

      git = {
        add    = "#6EBB30",
        change = "#218BE8",
        delete = "#FF0008",
      },

      terminal = {
        black          = "#F8FDCE",
        black_bright   = "#9A9F75",
        white          = "#827F5E",
        white_bright   = "#3D4A2B",
        red            = "#C5524D",
        red_bright     = "#C5524D",
        green          = "#5E800E",
        green_bright   = "#5E800E",
        yellow         = "#DCA838",
        yellow_bright  = "#DCA838",
        blue           = "#4C8A80",
        blue_bright    = "#4C8A80",
        magenta        = "#CF7859",
        magenta_bright = "#CF7859",
        cyan           = "#31874D",
        cyan_bright    = "#31874D",
      },

      hbg = {
        "#E9F1BD",
        "#EAF1B9",
        "#E2EDB6",
        "#E5EDBE",
        "#E0E8B4",
        "#D6EDB8",
      },
      hfg = {
        "#8DAE5A",
        "#92AC3F",
        "#6E9948",
        "#6D7A29",
        "#516F21",
        "#31874D",
      },

      none = "NONE",
    }
  end
end

return M
