-- Repo: https://github.com/nvim-lualine/lualine.nvim
-- Desc: a neovim statusline written in lua

return {
  'nvim-lualine/lualine.nvim',
  event = "VeryLazy",
  opts = {
    options = {
      icons_enabled = false,
      disabled_filetypes = { 'NvimTree' }
    },
    sections = {
      lualine_x = { 'filetype' },
    },
  }
}
