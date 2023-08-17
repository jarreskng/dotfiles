return {
  'nvim-neo-tree/neo-tree.nvim',
  enabled = true,
  dependencies = {
    "nvim-lua/plenary.nvim",
    "muniftanjim/nui.nvim",
    "nvim-tree/nvim-web-devicons",
  },
  keys = {
    { '<leader>ee', '<cmd>Neotree toggle reveal float<cr>', desc = 'NeoTree: open float' },
    { '<leader>es', '<cmd>Neotree toggle reveal left<cr>',  desc = 'NeoTree: open side'  },
  },
  opts = {
    close_if_last_window = true,
    use_popups_for_input = false,
    use_default_mappings = false,
    sort_case_insensitive = true,
    enable_diagnostice = true,
    enable_git_status = true,
    enable_modified_markers = false,
    popup_border_style = 'rounded',
    default_source = 'filesystem',
    sources = { 'filesystem'},
    default_component_configs = {
      name = {
	use_git_status_colors = true,
      },
      container = {
	right_padding = 1,
	enable_character_fade = true,
      },
      indent = {
	with_markers = false,
	with_expanders = true,
	expander_expanded = "",
	expander_collapsed = "",
      },
      git_status = {
	align = "right",
	symbols = {
	  added     = '',
	  deleted   = '',
	  modified  = '',
	  renamed   = '',
	  untracked = '',
	  ignored   = '',
	  unstaged  = '',
	  staged    = '',
	  conflict  = '',
	},
      },
    },
    window = {
      position = 'float',
      popup = {
	size = {
	  width = '80%',
	  height = '80%',
	}
      },
      mappings = {
	['<space>'] = 'toggle_node',
	['<esc>'] = 'cancel',
	['<cr>'] = 'open',
	['q'] = 'close_window',
	['z'] = 'close_node',
	['s'] = 'open_split',
	['v'] = 'open_vsplit',
	['d'] = 'delete',
	['r'] = 'rename',
	['a'] = 'add',
	['A'] = 'add_directory',
	['y'] = 'copy_to_clipboard',
	['x'] = 'cut_to_clipboard',
	['p'] = 'paste_from_clipboard',
	['e'] = 'toggle_auto_expand_width',
      },
    },
    filesystem = {
      bind_to_cwd = false,
      filtered_items = {
	usr_libuv_file_watcher = true,
	hide_dotfiles = false,
	hide_gitignore = true,
	show_hidden_count = true,
	hide_by_name = {
	  '.DS_Store',
	  'node_modules',
	  'nuget'
	},
      },
      follow_current_file = {
	enabled = true,
	leave_dirs_open = false,
      },
      window = {
	mappings = {
	  ['.'] = 'set_root',
	  ['/'] = 'fuzzy_finder',
	  ['f'] = 'filter_on_submit',
	  ['F'] = 'clear_filter',
	  ['<bs>'] = 'navigate_up',
	},
	fuzzy_finder_mappings = {
	  ["<C-n>"] = "move_cursor_down",
	  ["<C-p>"] = "move_cursor_up",
	},
      },
      find_args = {
	fd = {
	  "--exclude", ".git",
	  "--exclude", "node_modules",
	  "--exclude", "nuget",
	}
      },
    },
  },
}
