-- Repo: https://github.com/projekt0n/github-nvim-theme
-- Desc: github theme for neovim

return {
  'projekt0n/github-nvim-theme',
  priority = 1000,
  lazy = false,
  opts = {
    options = {
      styles = {
	comments = 'italic',
	keywords = 'bold',
	types = 'italic,bold'
      }
    }
  },
  config = function(_, opts)
    require('github-theme').setup(opts)
    vim.cmd.colorscheme('github_light')
  end
}

