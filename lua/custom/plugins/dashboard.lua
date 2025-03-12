local logo = [[
░▒▓███████▓▒░░▒▓████████▓▒░▒▓██████▓▒░░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░▒▓██████████████▓▒░  
░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░     ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░ 
░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░     ░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░ 
░▒▓█▓▒░░▒▓█▓▒░▒▓██████▓▒░░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░ 
░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░     ░▒▓█▓▒░░▒▓█▓▒░ ░▒▓█▓▓█▓▒░ ░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░ 
░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░     ░▒▓█▓▒░░▒▓█▓▒░ ░▒▓█▓▓█▓▒░ ░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░ 
░▒▓█▓▒░░▒▓█▓▒░▒▓████████▓▒░▒▓██████▓▒░   ░▒▓██▓▒░  ░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░




===================================================================================================================
    ]]
logo = string.rep('\n', 8) .. logo .. '\n\n'
local footer = [[


===================================================================================================================
]]
return {
  require('dashboard').setup {
    theme = 'doom',
    config = {
      header = vim.split(logo, '\n'),
      shortcut = {
        { desc = '📁 Files', group = '@property', action = 'Telescope find_files', key = 'f' },
        { desc = '🔎 Grep', group = '@property', action = 'Telescope live_grep', key = 'g' },
        { desc = '🔧 Config', group = '@property', action = 'edit ~/.config/nvim/init.lua', key = 'c' },
      },
      footer = vim.split(footer, '\n'),
      center = {
        {
          desc = ' [F]ind File',
          key = 'f',
          action = 'Telescope find_files',
          icon = '🔎',
        },
        {
          desc = ' [R]ecent Files',
          key = 'r',
          action = 'Telescope oldfiles',
          icon = '⌚',
        },
        {
          desc = ' Fuzzy [G]rep',
          key = 'g',
          action = 'Telescope live_grep',
          icon = '😭',
        },
        {
          desc = ' [N]ew File',
          key = 'n',
          icon = '📃',
          action = 'enew',
        },
        {
          desc = ' [N]otes',
          key = 'N',
          action = 'edit ~/.notes',
          icon = '📝',
        },
        {
          desc = ' [G]it',
          key = 'G',
          action = 'Fugit2',
          icon = '',
        },
        {
          desc = ' [L]azy',
          key = 'L',
          action = 'Lazy',
          icon = '📦',
        },
        {
          desc = ' Close Dashboard',
          key = 'Q',
          action = 'bd',
          icon = '💢',
        },
      },
    },
  },
}
