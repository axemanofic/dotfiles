local conform = require "configs.conform"
local nvimtree = require "configs.nvimtree"
local render_markdown = require "configs.render_markdown"

return {
  {
    "stevearc/conform.nvim",
    event = "BufWritePre", -- uncomment for format on save
    opts = conform.opts,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = require "configs.treesitter",
    event = "VeryLazy",
  },
  {
    "nvim-tree/nvim-tree.lua",
    opts = nvimtree.opts,
  },
  {
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
  },
  {
    "Exafunction/windsurf.vim",
    event = "BufEnter",
  },
  {
    "max397574/better-escape.nvim",
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },
  {
    "MeanderingProgrammer/markdown.nvim",
    name = "render-markdown", -- Only needed if you have another plugin named markdown.nvim
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    opts = render_markdown.opts,
    config = render_markdown.config,
  },
  {
    "folke/neodev.nvim",
    config = function()
      require("neodev").setup {}
    end,
  },
  { "echasnovski/mini.nvim", version = false },
  { "echasnovski/mini.move", version = false },
  { "echasnovski/mini.pairs", version = false },
  {
    "mfussenegger/nvim-lint",
    event = "VeryLazy",
    config = function()
      require "configs.lint"
    end,
  },
  { import = "nvchad.blink.lazyspec" },
  {
    "mason-org/mason.nvim",
    opts = require "configs.mason",
  },
}
