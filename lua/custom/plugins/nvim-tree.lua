return {
  'nvim-tree/nvim-tree.lua',
  version = '*',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  lazy = false,
  keys = {
    { '<leader>e', ':NvimTreeToggle<CR>', desc = 'Toggle file explorer', silent = true },
  },
  opts = {},
}
