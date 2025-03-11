local null_ls = require 'null-ls'

return {

  {
    'joeveiga/ng.nvim',
    config = function()
      local ng = require 'ng'
      vim.keymap.set('n', '<leader>at', ng.goto_template_for_component, { noremap = true, silent = true })
      vim.keymap.set('n', '<leader>ac', ng.goto_component_with_template_file, { noremap = true, silent = true })
    end,
  },

  require('lspconfig').angularls.setup {
    cmd = {
      'ngserver',
      '--stdio',
      '--tsProbeLocations',
      '/home/evilbas/.node-packages/lib/node_modules',
      '--ngProbeLocations',
      '/home/evilbas/.node-packages/lib/node_modules',
    },
    on_attach = function(client, bufnr)
      -- Add keybindings or custom settings here
    end,
    capabilities = require('cmp_nvim_lsp').default_capabilities(),
    root_dir = require('lspconfig').util.root_pattern('angular.json', '.git'),
  },
  require('cmp').setup {
    sources = {
      { name = 'nvim_lsp' },
      { name = 'buffer' },
      { name = 'path' },
    },
  },
  require('tailwindcss-colorizer-cmp').setup {
    color_square_width = 2,
  },
  require('telescope').setup {
    defaults = {
      file_ignore_patterns = { 'node_modules' },
    },
  },
  null_ls.setup {
    sources = {
      null_ls.builtins.formatting.prettier,
    },
  },
}
