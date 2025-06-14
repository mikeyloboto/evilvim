local null_ls = require 'null-ls'

return {

  require('lspconfig').angularls.setup {
    cmd = {
      'ngserver',
      '--stdio',
      '--tsProbeLocations',
      '/home/evilbas/.local/lib/node_modules',
      '--ngProbeLocations',
      '/home/evilbas/.local/lib/node_modules',
    },
    on_attach = function(client, bufnr) end,
    capabilities = require('cmp_nvim_lsp').default_capabilities(),
    root_dir = require('lspconfig').util.root_pattern 'angular.json',
  },
  require('tailwindcss-colorizer-cmp').setup {
    color_square_width = 2,
  },
  require('cmp').setup {
    sources = {
      { name = 'nvim_lsp' },
      { name = 'buffer' },
      { name = 'path' },
    },
    formatting = {
      format = require('tailwindcss-colorizer-cmp').formatter,
    },
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
