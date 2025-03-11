local cmp = require 'cmp'
return {
  cmp.setup {
    mapping = {
      ['<CR>'] = cmp.mapping.confirm { select = true }, -- Accept currently selected item on Enter
      ['<Tab>'] = cmp.mapping.select_next_item(), -- Navigate to the next item with Tab
      ['<S-Tab>'] = cmp.mapping.select_prev_item(), -- Navigate to the previous item with Shift+Tab
    },
    sources = {
      { name = 'nvim_lsp' },
      { name = 'buffer' },
      { name = 'path' },
    },
  },
  vim.keymap.set('n', '<leader>F', ':Telescope find_files<CR>', { noremap = true, silent = true }),
}
