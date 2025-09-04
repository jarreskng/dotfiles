-- Repo: https://github.com/windwp/nvim-autopairs
-- Desc: a powerful autopair plugin for neovim

return {
  'windwp/nvim-autopairs',
  enabled = false,
  event = 'InsertEnter',
  opts = {
    check_ts = true,
    enable_check_bracket_line = false 
  }
}
