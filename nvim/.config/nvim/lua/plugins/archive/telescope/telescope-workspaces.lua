return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    'natecraddock/workspaces.nvim',
    keys = {
      { '<leader>fw', '<cmd>Telescope workspaces<cr>', desc = 'Find workspaces' },
    },
    opts = {
      auto_open = true,
      mru_sort = false,
      hooks = {
	open = { 'Telescope find_files' }
      }
    },
    config = function(_, opts)
      require("workspaces").setup(opts)
      require("telescope").load_extension("workspaces")
    end
  },
  
}
