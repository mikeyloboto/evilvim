return {
  'folke/snacks.nvim',
  priority = 1000,
  lazy = false,
  opts = {
    animate = { enabled = true },
    indent = { enabled = true },
    input = { enabled = true },
    scope = { enabled = true },
    scroll = { enabled = true },
    statuscolumn = { enabled = false }, -- we set this in options.lua
    words = { enabled = true },
  },
  -- stylua: ignore
}
