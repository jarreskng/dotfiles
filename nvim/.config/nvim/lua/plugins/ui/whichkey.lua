-- Repo: https://github.com/folke/which-key.nvim
-- Desc: displays a popup with possible key bindings

return {
  'folke/which-key.nvim',
  event = 'VeryLazy',
  opts = {
    icons = {
      breadcrumb = '⟶'
    },
    spec = {
      { "<leader>w", group = "windows" },
      { "<leader>b", group = "buffers" },
      { "<leader>e", group = "explorer" },
      { "<leader>f", group = "file/find" },
      { "g", group = "goto" },
      { "]", group = "next" },
      { "[", group = "prev" },
    }
  },
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 300
  end,
  config = function(_, opts)
    local wk = require('which-key')
    wk.setup(opts)
  end
}

