local M = {}

function M.setup(opts)
  if opts.theme == "dark" then
    -- stylua: ignore
    return {
      bg         = opts.background == "warm" and "#152326" or "#1D282F",
      fg         = "#DBD0C6",

      number     = opts.background == "warm" and "#234847" or "#314654",

      white      = "#D9D3CE",
      gray       = "#91A4AD",
      green      = "#568270",
      green0     = "#6FA791",
      green1     = "#9EBB9C",
      yellow     = "#FFD7AA",
      yellow0    = "#F7B982",
      orange     = "#F9ADA0",
      blue       = "#86BFD0",
      blue0      = "#A7CBEA",
      lightblue  = "#9FCFC3",
      lightgreen = "#96C2A1",
      pink       = "#D9ADD4",
      cyan       = "#79C2B6",
      cyan0      = "#87CBB1",
      red        = "#D2696C",
      red0       = "#FA5056",
      red1       = "#E89396",

      cursorline = opts.background == "warm" and "#1D3034" or "#21313B",
      separator  = "#0B1213",

      statusbar  = opts.background == "warm" and "#111F22" or "#152128",
      status_sep = opts.background == "warm" and "#203336" or "#1A2C37",

      bg_float   = opts.background == "warm" and "#0F1A1C" or "#1A2328",

      bg_visual  = opts.background == "warm" and "#38524F" or "#223B49",

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
        black          = opts.background == "warm" and "#152326" or "#1D282F",
        black_bright   = "#568270",
        white          = "#91A4AD",
        white_bright   = "#DBD0C6",
        red            = "#FF5B61",
        red_bright     = "#D48588",
        green          = "#9DC6A9",
        green_bright   = "#95C2A1",
        yellow         = "#FFCF99",
        yellow_bright  = "#FDD9AF",
        blue           = "#86BFD2",
        blue_bright    = "#A7CBEA",
        magenta        = "#D59CCE",
        magenta_bright = "#D9ADD4",
        cyan           = "#79C2B6",
        cyan_bright    = "#87CBB1",
      },

      hbg = {
        "#28403c",
        "#4b4c44",
        "#494342",
        "#375259",
        "#504c5a",
        "#4e383b",
      },
      hfg = {
        "#6FA791",
        "#FFD7AA",
        "#F9ADA0",
        "#86BFD0",
        "#D9ADD4",
        "#D2696C",
      },

      none = "NONE",
    }
  elseif opts.theme == "light" then
    -- stylua: ignore
    return {
      bg         = opts.background == "warm" and "#CDE3C8" or "#C9E4D4",
      fg         = "#3C6746",

      number     = opts.background == "warm" and "#9ABDA0" or "#99C7AC",

      white      = "#D9D3CE",
      gray       = "#444E52",
      green      = "#73A08D",
      green0     = "#6FA791",
      green1     = "#5E800E",
      yellow     = "#BF7021",
      yellow0    = "#C78500",
      orange     = "#BF442B",
      blue       = "#4F8FA1",
      blue0      = "#4F6980",
      lightblue  = "#0E747B",
      lightgreen = "#107B6B",
      pink       = "#913069",
      cyan       = "#07790B",
      cyan0      = "#00996D",
      red        = "#971015",
      red0       = "#FA5056",
      red1       = "#E89396",

      cursorline = opts.background == "warm" and "#BEDBB8" or "#BDDBC9",
      separator  = "#9FB4A4",

      statusbar  = opts.background == "warm" and "#C3DBBD" or "#C4DECE",
      status_sep = opts.background == "warm" and "#AFCBA9" or "#B1D3BE",

      bg_float   = opts.background == "warm" and "#B0CCAD" or "#B4D0BF",

      bg_visual  = opts.background == "warm" and "#B4E1B2" or "#B3E0C5",

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
        black          = opts.background == "warm" and "#CDE3C8" or "#C9E4D4",
        black_bright   = "#73A08D",
        white          = "#7A8386",
        white_bright   = "#1D4E27",
        red            = "#971015",
        red_bright     = "#971015",
        green          = "#5E800E",
        green_bright   = "#5E800E",
        yellow         = "#BF7021",
        yellow_bright  = "#BF7021",
        blue           = "#4F8FA1",
        blue_bright    = "#4F8FA1",
        magenta        = "#913069",
        magenta_bright = "#913069",
        cyan           = "#07790B",
        cyan_bright    = "#00996D",
      },

      hbg = {
        "#b5d0b6",
        "#e2debb",
        "#d9d4bd",
        "#bad9ca",
        "#d0d4cb",
        "#cec8b4",
      },
      hfg = {
        "#73A08D",
        "#BF7021",
        "#BF442B",
        "#4F8FA1",
        "#913069",
        "#971015",
      },

      none = "NONE",
    }
  end
end

return M
