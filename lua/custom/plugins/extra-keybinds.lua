local cmp = require 'cmp'
return {
  cmp.setup {
    mapping = {
      ['<CR>'] = cmp.mapping.confirm { select = true }, -- Accept currently selected item on Enter
      ['<Tab>'] = cmp.mapping.select_next_item(), -- Navigate to the next item with Tab
      ['<S-Tab>'] = cmp.mapping.select_prev_item(), -- Navigate to the previous item with Shift+Tab
      ['<Esc>'] = cmp.mapping.close(),
    },
    sources = {
      { name = 'nvim_lsp' },
      { name = 'buffer' },
      { name = 'path' },
    },
  },
  vim.keymap.set('n', '<leader>Ff', ':Telescope find_files<CR>', { noremap = true, silent = true, desc = 'Telescope [f]ind' }),
  vim.keymap.set('n', '<leader>Fg', ':Telescope live_grep<CR>', { noremap = true, silent = true, desc = 'Telescope [g]rep' }),
  vim.keymap.set('n', '<leader>Fr', ':Telescope oldfiles<CR>', { noremap = true, silent = true, desc = 'Telescope [r]ecent' }),
  vim.keymap.set('n', '<leader>A', ':Alpha<CR>', { noremap = true, silent = true, desc = 'Dashboard' }),
  vim.keymap.set('i', ':w', '<Esc>:w'),
  vim.keymap.set('i', 'jj', '<Esc>'),
  vim.keymap.set('n', '<leader>Ss', ':split<CR>', { desc = '[S]plit' }),
  vim.keymap.set('n', '<leader>Sv', ':vsplit<CR>', { desc = 'Split [V]ertical' }),
}
