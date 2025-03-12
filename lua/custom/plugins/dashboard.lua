return {
  require('dashboard').setup {
    theme = 'hyper', -- Choose between 'hyper' or 'doom'
    config = {
      header = {
        'Neovim',
      },
      shortcut = {
        { desc = '📁 Files', group = '@property', action = 'Telescope find_files', key = 'f' },
        { desc = '🔎 Grep', group = '@property', action = 'Telescope live_grep', key = 'g' },
        { desc = '🔧 Config', group = '@property', action = 'edit ~/.config/nvim/init.lua', key = 'c' },
      },
      footer = { '' },
    },
  },
}
