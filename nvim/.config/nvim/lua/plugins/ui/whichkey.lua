-- Repo: https://github.com/folke/which-key.nvim
-- Desc: displays a popup with possible key bindings

return {
  'folke/which-key.nvim',
  event = 'VeryLazy',
  opts = {
    icons = {
      breadcrumb = '⟶'
    },
    defaults = {
      ['g'] = { name = '+goto' },
      [']'] = { name = '+next' },
      ['['] = { name = '+prev' },
      ['<leader>w'] = { name = '+windows' },
      ['<leader>b'] = { name = '+buffers'},
      ['<leader>e'] = { name = '+explorer' },
      ['<leader>f'] = { name = '+file/find' },
    }
  },
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 300
  end,
  config = function(_, opts)
    local wk = require('which-key')
    wk.setup(opts)
    wk.register(opts.defaults)
  end
}
