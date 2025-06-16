---@type ChadrcConfig
local M = {}

local dashboards = require "configs.dashboard"

M.base46 = {
  theme = "catppuccin",

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
  nvdash = {
    load_on_startup = true,
    header = dashboards.dashboard.work,
  },
}

return M
