-- Repo: https://github.com/nvim-treesitter/nvim-treesitter
-- Desc: a simple and easy way to use interface for tree-sitter

return {
  'nvim-treesitter/nvim-treesitter',
  event = 'BufReadPost',
  build = ':TsUpdate',
  dependencies = {
    'nvim-treesitter/nvim-treesitter-textobjects'
  },
  opts = {
    -- A list of parser names, or 'all' (thelisted parsers should always be installed)
    ensure_installed = {
      'typescript', 'javascript', 'html', 'css', 'scss',
      'c_sharp', 'python', 'lua', 'luadoc',
      'dockerfile', 'ini', 'json', 'yaml',
      'markdown', 'markdown_inline',
      'git_config', 'git_rebase', 'gitattributes', 'gitcommit', 'gitignore',
    },

    -- Install parsers synchronously (only applied to `ensure_installed`)
    sync_install = false,

    -- Automatically install missing parsers when entering buffer
    auto_install = true,

    -- List of parsers to ignore installing (for 'all')
    ignore_install = { },

    -- Modules and its options go here
    textobjects = { enable = true },
    highlight = { enable = true },
    incremental_selection = { 
      enable = true,
	keymaps = {
	init_selection   = '<C-n>',
	node_incremental = '<C-n>',
	node_decremental = '<C-r>',
	scope_incremental = false,
      },
    },
    
  },
  config = function(_, opts)
    require('nvim-treesitter.configs').setup(opts)
  end
}
