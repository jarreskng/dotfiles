-- Repo: https://github.com/lukas-reineke/indent-blankline.nvim
-- Desc: add indentation guides to all lines

return {
  'lukas-reineke/indent-blankline.nvim',
  event = 'BufReadPre',
  dependencies = { 
    'nvim-treesitter/nvim-treesitter' 
  },
  opts = {
    show_current_context = true,
    use_treesitter = true,
    use_treesitter_scope = true,
    filetype_exclude = { '', 'help', 'man' },
  },
  init = function()
    vim.opt.list = true
  end
}
