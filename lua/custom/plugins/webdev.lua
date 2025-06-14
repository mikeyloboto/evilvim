return {
  {
    'lima1909/resty.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' },
  },
  {
    'RRethy/vim-hexokinase',
    build = 'make hexokinase',
    config = function()
      vim.g.Hexokinase_highlighters = { 'virtual' }
    end,
  },
}
