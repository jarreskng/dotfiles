return {
  'nvim-telescope/telescope.nvim',
  enabled = false,
  cmd = 'Telescope',
  dependencies = {
    'nvim-lua/plenary.nvim'
  },
  keys = {
    { '<leader>ff', '<cmd>Telescope find_files<cr>', desc = 'Find files' },
    { '<leader>fg', '<cmd>Telescope live_grep<cr>',  desc = 'Live grep' },
    { '<leader>fb', '<cmd>Telescope buffers<cr>',    desc = 'Find buffer' },
  },
  opts = {
    defaults = {
      initial_mode = 'insert',
      history = false,
      path_display = { 'truncate' },
      layout_strategy = 'horizontal',
      file_ignore_patterns = {
	'.git/',
	'node_modules/',
	'.angular/'
      },
      mappings = {
	n = { ['wk'] = "which_key" }
      },
    },
    pickers = {
      find_files = {
	hidden = true,
	follow = true,
      },
      live_grep = {
	disable_coordinates = true,
      },
      buffers = {
	theme = 'dropdown',
	previewer = false,
	mappings = {
	  n = { ['d'] = "delete_buffer" }
	}
      }
    },
    extensions = {

    }
  }
}
