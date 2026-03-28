local M = {}

---@module 'avante'
---@type avante.Config
M.opts = {
  -- add any opts here
  -- this file can contain specific instructions for your project
  -- instructions_file = "avante.md",
  -- for example
  provider = "ollama",
  providers = {
  ollama = {
    endpoint = "http://127.0.0.1:11434",
    model = "qwen3.5:4b-q4_K_M",
    timeout = 30000,
    extra_request_body = {
      options = {
        temperature = 0.75,
        num_ctx = 20480,
        keep_alive = "5m",
      },
    },
  },
},
}

return M
