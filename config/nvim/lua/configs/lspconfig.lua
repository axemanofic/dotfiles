require("nvchad.configs.lspconfig").defaults()
vim.lsp.config.dockerls = {
  settings = {
    docker = {
      languageserver = {
        formatter = {
          ignoreMultilineInstructions = true,
        },
      },
    },
  },
}

vim.lsp.config.lua_ls = {
  settings = {
    Lua = {
      runtime = {
        -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
        version = "LuaJIT",
      },
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = { "vim" },
      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = vim.api.nvim_get_runtime_file("", true),
      },
      -- Do not send telemetry data containing a randomized but unique identifier
      telemetry = {
        enable = false,
      },
    },
  },
}
vim.lsp.config.pylsp = {
  cmd_env = { VIRTUAL_ENV = os.getenv "VIRTUAL_ENV" },
  settings = {
    pylsp = {
      plugins = {
        pycodestyle = {
          maxLineLength = 120,
        },
        black = {
          enable = true,
        },
        flake8 = {
          enable = false,
        },
        ruff = {
          enable = true,
        },
        pylsp_mypy = {
          enabled = true,
        },
        pylsp_isort = {
          enabled = true,
        },
      },
    },
  },
}

local servers = {
  "dockerls",
  "lua_ls",
  "gopls",
  "taplo",
  "pylsp",
}
vim.lsp.enable(servers)
