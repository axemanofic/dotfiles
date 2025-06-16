local M = {}

M.opts = {
  formatters_by_ft = {
    lua = { "stylua" },
    python = { "isort", "black" },
    yaml = { "yamlfmt" },
  },

  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 500,
    lsp_fallback = true,
  },
}

return M
