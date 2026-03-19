return {
  'nvimtools/none-ls.nvim',
  dependencies = { 'nvim-lua/plenary.nvim' },

  config = function()
    local null_ls = require 'null-ls'

    null_ls.setup {
      sources = {
        -- Prettier for TS/JS/HTML/CSS/JSON/etc.
        null_ls.builtins.formatting.prettier,
      },
    }

    -- Autoformat on save (optional)
    vim.api.nvim_create_autocmd('BufWritePre', {
      callback = function()
        vim.lsp.buf.format()
      end,
    })
  end,
}
