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
  {
    "linux-cultist/venv-selector.nvim",
    dependencies = {
      "neovim/nvim-lspconfig",
      { "nvim-telescope/telescope.nvim", branch = "0.1.x", dependencies = { "nvim-lua/plenary.nvim" } }, -- optional: you can also use fzf-lua, snacks, mini-pick instead.
    },
    ft = "python", -- Load when opening Python files
    keys = {
      { ",v", "<cmd>VenvSelect<cr>" }, -- Open picker on keymap
    },
    opts = { -- this can be an empty lua table - just showing below for clarity.
      search = {}, -- if you add your own searches, they go here.
      options = {}, -- if you add plugin options, they go here.
    },
  },
}
