-- Setting the path for lazy.nvim and its lock file
local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
local lockpath = vim.fn.stdpath('data') .. '/lazy/lock.json'

-- Bootstrap the package manager
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable',
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Initialize the package manager and plugins
require('lazy').setup('../plugins', {
  lockfile = lockpath,
  defaults = { lazy = true },
  performance = {
    rtp = {
      disabled_plugins = {
	'matchparen',
	'matchit',
	'tarPlugin',
	'zipPlugin',
	'netrwPlugin',
	'2html_plugin',
	'vimballPlugin',
	'getscriptPlugin',
      }}
    }
  })
