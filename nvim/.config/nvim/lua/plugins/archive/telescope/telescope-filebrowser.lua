return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    "nvim-telescope/telescope-file-browser.nvim",
    keys = {
      { '<leader>fm', '<cmd>Telescope file_browser<cr>', desc = 'File manager' }
    },
    config = function(_, opts)
      require('telescope').load_extension('file_browser')
    end
  }
}
