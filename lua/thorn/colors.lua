local M = {}

function M.setup(opts)
  if opts.theme == "dark" then
    -- stylua: ignore
    return {
      bg         = "#152326",
      fg         = "#DBD0C6",

      number     = "#234847",

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

      cursorline = "#1D3034",
      separator  = "#0B1213",

      statusbar  = "#0F1A1C",
      status_sep = "#203336",

      bg_float   = "#0F1A1C",

      bg_visual  = "#38524F",

      diff = {
        add = "#435B55",
        change = "#23363B",
        delete = "#704C4E",
      },

      git = {
        add = "#94C68B",
        change = "#6DAAE3",
        delete = "#D8464B",
      },

      none = "NONE",
    }
  elseif opts.theme == "light" then
    -- stylua: ignore
    return {
      bg         = "#CDE3C8",
      fg         = "#1D4E27",

      number     = "#9ABDA0",

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

      cursorline = "#BEDBB8",
      separator  = "#9FB4A4",

      statusbar  = "#C3DBBD",
      status_sep = "#AFCBA9",

      bg_float   = "#B0CCAD",

      bg_visual  = "#B4E1B2",

      diff = {
        add = "#9CC9B0",
        change = "#BBD3B6",
        delete = "#D3B6B6",
      },

      git = {
        add = "#6EBB30",
        change = "#218BE8",
        delete = "#FF0008",
      },

      none = "NONE",
    }
  end
end

return M
