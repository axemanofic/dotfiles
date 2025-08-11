require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

-- map("n", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

-- TERMINAL
local term_v = function()
  require("nvchad.term").toggle { pos = "vsp", size = 0.6 }
end

local term_f = function()
  require("nvchad.term").toggle {
    pos = "float",
    float_opts = {
      height = 0.6,
      row = 0.1,
    },
  }
end

map("n", "<C-]>", term_v, { desc = "Open vertical terminal" })
map("n", "<C-\\>", term_f, { desc = "Open float terminal" })
map("n", "<C-f>", term_f, { desc = "Open float terminal" })
--
map("t", "<C-]>", term_v, { desc = "Closed vertical terminal" })
map("t", "<C-\\>", term_f, { desc = "Closed float terminal" })
map("t", "<C-f>", term_f, { desc = "Closed float terminal" })
