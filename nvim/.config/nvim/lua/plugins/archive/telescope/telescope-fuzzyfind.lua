return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    "nvim-telescope/telescope-fzf-native.nvim",
    build = 'make',
    config = function(_, opts)
      require('telescope').load_extension('fzf')
    end
  }
}
