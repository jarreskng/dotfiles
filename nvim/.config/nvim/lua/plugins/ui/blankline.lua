-- Repo: https://github.com/lukas-reineke/indent-blankline.nvim
-- Desc: add indentation guides to all lines

return {
  'lukas-reineke/indent-blankline.nvim',
  event = 'BufReadPre',
  main = 'ibl',
  dependencies = { 
    'nvim-treesitter/nvim-treesitter' 
  },
  opts = {
    indent = {
      char = '│',
      tab_char = '│',
    },
    scope = {
      enabled = true,
      show_start = false,
      show_end = false,
    },
    exclude = {
      filetypes = { '', 'help', 'man', 'neo-tree' },
    },
  },
  init = function()
    vim.opt.list = true
    vim.opt.listchars:append "space:⋅"
  end
}
