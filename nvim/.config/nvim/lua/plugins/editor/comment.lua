-- Repo: https://github.com/numtostr/comment.nvim
-- Desc: a commenting plugin for neovim

return {
  'numtostr/comment.nvim',
  event = 'BufEnter',
  opts = {
    mappings = {
      basic = true,
      extra = false
    }
  }
}
