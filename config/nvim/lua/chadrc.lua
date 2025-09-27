---@type ChadrcConfig
local M = {}

M.base46 = {
  theme = "catppuccin",
  transparency = true,

  hl_add = {
    NvimTreeOpenedFolderName = { fg = "green", bold = true },
  },

  hl_override = {
    Comment = { italic = true },
    ["@comment"] = { italic = true },
    DiffChange = {
      fg = "#ffd966",
    },
    DiffAdd = {
      fg = "#38761d",
    },
    DiffRemoved = {
      fg = "#cc0000",
    },
  },
}

M.ui = {
  cmp = {
    style = "atom",
  },
  statusline = {
    theme = "minimal",
    separator_style = "round",
  },
  telescope = { style = "bordered" },
  tabufline = {
    enabled = false,
    lazyload = false,
  },
}

M.nvdash = {
  load_on_startup = true,
}

return M
