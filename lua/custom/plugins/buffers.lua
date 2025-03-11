return {
  require('bufferline').setup {
    options = {
      numbers = 'none',
      diagnostics = 'nvim_lsp',
      separator_style = 'slant',
      always_show_bufferline = true,
    },
  },
  vim.keymap.set('n', '<Tab>', ':BufferLineCycleNext<CR>', { noremap = true, silent = true }),
  vim.keymap.set('n', '<S-Tab>', ':BufferLineCyclePrev<CR>', { noremap = true, silent = true }),
}
