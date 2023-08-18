-- Repo: https://github.com/ibhagwan/fzf-lua
-- Desc: When telescope it too slow...
-- Deps: fd (better find utility), rg (getter grep utility)

return {
  'ibhagwan/fzf-lua',
  cmd = 'FzfLua',
  dependencies = {
    'nvim-tree/nvim-web-devicons' 
  },
  keys = {
    { '<leader>fg', '<cmd>FzfLua live_grep<cr>', desc = 'Fzf live grep' },
    { '<leader>ff', '<cmd>FzfLua files<cr>', desc = 'Fzf find files' },
    { '<leader>fr', '<cmd>FzfLua resume<cr>', desc = 'Fzf resume' },
    { '<leader>fb', '<cmd>FzfLua buffers<cr>', desc = 'Fzf find buffer' },
  },
  opts = {

  }
}

