local plugins = {}

table.insert(plugins, require('plugins.archive.telescope.telescope'))
table.insert(plugins, require('plugins.archive.telescope.telescope-ui-select'))
table.insert(plugins, require('plugins.archive.telescope.telescope-fuzzyfind'))
table.insert(plugins, require('plugins.archive.telescope.telescope-workspaces'))
table.insert(plugins, require('plugins.archive.telescope.telescope-filebrowser'))

return plugins
