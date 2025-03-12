return {
  require('nvim-tree').setup {
    hijack_netrw = true, -- Replace default file explorer
    view = {
      width = 30, -- Adjust the width of the sidebar
      side = 'left', -- Position: "left" or "right"
    },
    renderer = {
      icons = {
        glyphs = {
          default = '📄',
          symlink = '🔗',
        },
      },
    },
    diagnostics = {
      enable = true, -- Show LSP diagnostics in the file explorer
    },
  },
  vim.keymap.set('n', '<leader>e', ':NvimTreeToggle<CR>', { noremap = true, silent = true, desc = 'Tree Toggle' }), -- Toggle file browser
  vim.keymap.set('n', '<leader>E', ':NvimTreeFocus<CR>', { noremap = true, silent = true, desc = 'Tree Focus' }), -- Focus the file browser
}
