return {
  require('bufferline').setup {
    options = {
      numbers = 'ordinal',
      diagnostics = 'nvim_lsp',
      separator_style = 'thin',
      always_show_bufferline = true,
    },
  },
  vim.keymap.set('n', '<Tab>', ':BufferLineCycleNext<CR>', { noremap = true, silent = true }),
  vim.keymap.set('n', '<S-Tab>', ':BufferLineCyclePrev<CR>', { noremap = true, silent = true }),
}
