local M = {}

function M.setup(opts)
  if opts.theme == "dark" then
    -- stylua: ignore
    ---@type thorn.Palette
    return {
      bg         = "#172526",
      fg         = "#DBD2C7",

      number     = "#1C3D3C",

      white      = "#DBD2C7",
      gray       = "#A1A790",
      green_0    = "#B8CDB6", -- lightblue
      green_1    = "#9EBB9C", -- green1
      green_2    = "#88B497", -- cyan
      green_3    = "#9EC59B", -- lightgreen
      green_4    = "#6FA791", -- green0
      green_5    = "#568270", -- green
      green_6    = "#87CBB1", -- cyan0
      yellow     = "#FFD7AA",
      orange     = "#F9ADA0",
      blue       = "#91C4C0",
      red        = "#D2696C",

      cursorline = "#1B2C2D",
      separator  = "#0B1213",

      statusbar  = {
        fg  = "#9EC59B",
        bg  = "#152223",
        sep = "#1A2B2C",
      },

      bg_float   = "#131F20",

      bg_visual  = "#233935",

      diff = {
        add    = "#435B55",
        change = "#23363B",
        delete = "#704C4E",
      },

      git = {
        add    = "#94C68B",
        change = "#6DAAE3",
        delete = "#D8464B",
      },

      terminal = {
        black          = "#172526",
        black_bright   = "#568270",
        white          = "#A1A790",
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
  elseif opts.theme == "light" then
    -- stylua: ignore
    return {
      bg         = "#F9FDCE",
      fg         = "#3D4A2B",

      number     = "#CCD0A1",

      white      = "#D9D3CE",
      gray       = "#747A62",
      green_0    = "#66815A", -- lightblue
      green_1    = "#8DAE5A", -- green1
      green_2    = "#5D922E", -- cyan
      green_3    = "#92AC3F", -- lightgreen
      green_4    = "#516F21", -- green0
      green_5    = "#A3A776", -- green
      green_6    = "#0D9039", -- cyan0
      yellow     = "#DCA838",
      orange     = "#CF7859",
      blue       = "#3B9180",
      red        = "#C5524D",

      cursorline = "#F0F5C7",
      separator  = "#9FB4A4",

      statusbar  = {
        fg  = "#3C6746",
        bg  = "#ECF1C2",
        sep = "#D9E6AD",
      },

      bg_float   = "#E6EABE",

      bg_visual  = "#DCE6BA",

      diff = {
        add    = "#9CC9B0",
        change = "#BBD3B6",
        delete = "#D3B6B6",
      },

      git = {
        add    = "#6EBB30",
        change = "#218BE8",
        delete = "#FF0008",
      },

      terminal = {
        black          = "#F8FDCE",
        black_bright   = "#73A08D",
        white          = "#747A62",
        white_bright   = "#3D4A2B",
        red            = "#C5524D",
        red_bright     = "#C5524D",
        green          = "#5E800E",
        green_bright   = "#5E800E",
        yellow         = "#E3B261",
        yellow_bright  = "#E3B261",
        blue           = "#3B9180",
        blue_bright    = "#3B9180",
        magenta        = "#CF7859",
        magenta_bright = "#CF7859",
        cyan           = "#799A32",
        cyan_bright    = "#799A32",
      },

      hbg = {
        "#E5EDBE",
        "#E9F1BD",
        "#EAF1B9",
        "#E2EDB6",
        "#E0E8B4",
        "#D6EDB8",
      },
      hfg = {
        "#729462",
        "#8DAE5A",
        "#92AC3F",
        "#5D922E",
        "#516F21",
        "#0D9039",
      },

      none = "NONE",
    }
  end
end

return M
