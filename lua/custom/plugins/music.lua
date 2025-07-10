return {
  vim.keymap.set('n', '<leader>mh', '<cmd>!playerctl previous<CR><CR>', { desc = 'Previous' }),
  vim.keymap.set('n', '<leader>mj', '<cmd>!playerctl play-pause<CR><CR>', { desc = 'Play/Pause' }),
  vim.keymap.set('n', '<leader>mk', '<cmd>!playerctl next<CR><CR>', { desc = 'Next' }),
}
