local M = {}

function M.setup(opts)
  if opts.style == "dark" then
    -- stylua: ignore
    return {
      bg         = "#152326",
      fg         = "#D9D3CE",

      number     = "#444444",

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
      lightgreen = "#95C2A1",
      pink       = "#D9ADD4",
      cyan       = "#79C2B6",
      cyan0      = "#87CBB1",
      red        = "#D2696C",
      red0       = "#FA5056",
      red1       = "#E89396",

      cursorline = "#263338",
      separator  = "#0B1213",

      statusbar  = "#0F1A1C",
      status_sep = "#203336",

      bg_float   = "#0F1A1C",

      bg_visual  = "#38524F",
    }
  elseif opts.style == "light" then
    -- stylua: ignore
    return {
      bg         = "#C2DBC7",
      fg         = "#1D4E27",

      number     = "#889089",

      white      = "#D9D3CE",
      gray       = "#444E52",
      green      = "#7FA595",
      green0     = "#6FA791",
      green1     = "#9EBB9C",
      yellow     = "#BF7021",
      yellow0    = "#F7B982",
      orange     = "#BF442B",
      blue       = "#4F8FA1",
      blue0      = "#4F6980",
      lightblue  = "#0E747B",
      lightgreen = "#107B6B",
      pink       = "#7D3671",
      cyan       = "#07790B",
      cyan0      = "#07790B",
      red        = "#971015",
      red0       = "#FA5056",
      red1       = "#E89396",

      cursorline = "#A7C4A7",
      separator  = "#9FB4A4",

      statusbar  = "#A4BFAA",
      status_sep = "#89A389",

      bg_float   = "#98B695",

      bg_visual  = "#A0D49C",
    }
  end
end

return M
