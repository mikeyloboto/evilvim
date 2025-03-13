return {

  {
    'goolord/alpha-nvim',
    config = function()
      require('alpha').setup(require('alpha.themes.dashboard').config)
      local db = require 'alpha.themes.dashboard'
      db.section.buttons.val = {

        db.button('f', '🔎 > Find File', ':Telescope find_files<CR>'),
        db.button('r', '⌚ > Recent Files', ':Telescope oldfiles<CR>'),
        db.button('g', '😭 > Fuzzy Grep', ':Telescope live_grep<CR>'),
        db.button('n', '📃 > New File', ':enew'),
        db.button('N', '📝 > Notes', ':edit ~/.notes<CR>'),
        db.button('G', '  > Git', ':Fugit2<CR>'),
        db.button('L', '📦 > Lazy', ':Lazy<CR>'),
        db.button('Q', '💢 > Close Dashboard', ':bd<CR>'),
      }

      local header = {
        [[]],
        [[▓█████ ██▒   █▓ ██▓ ██▓  ██▒   █▓ ██▓ ███▄ ▄███▓]],
        [[▓█   ▀▓██░   █▒▓██▒▓██▒ ▓██░   █▒▓██▒▓██▒▀█▀ ██▒]],
        [[▒███   ▓██  █▒░▒██▒▒██░  ▓██  █▒░▒██▒▓██    ▓██░]],
        [[▒▓█  ▄  ▒██ █░░░██░▒██░   ▒██ █░░░██░▒██    ▒██ ]],
        [[░▒████▒  ▒▀█░  ░██░░██████▒▒▀█░  ░██░▒██▒   ░██▒]],
        [[░░ ▒░ ░  ░ ▐░  ░▓  ░ ▒░▓  ░░ ▐░  ░▓  ░ ▒░   ░  ░]],
        [[ ░ ░  ░  ░ ░░   ▒ ░░ ░ ▒  ░░ ░░   ▒ ░░  ░      ░]],
        [[   ░       ░░   ▒ ░  ░ ░     ░░   ▒ ░░      ░   ]],
        [[   ░  ░     ░   ░      ░  ░   ░   ░         ░   ]],
        [[           ░                 ░                  ]],
        [[]],
        [[]],
        [[]],
        [[]],
        [[]],
        [[]],
        [[]],
        [[]],
        [[]],
        [[]],
        [[]],
        [[]],
        [[]],
        [[]],
        [[]],
        [[]],
        [[]],
        [[]],
        [[]],
        [[]],
        [[]],
        [[]],
      }

      db.section.header.val = header
      db.section.header.opts.hl = 'ErrorMsg'
    end,
  },
}
