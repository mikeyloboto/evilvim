local cmp_autopairs = require 'nvim-autopairs.completion.cmp'
local cmp = require 'cmp'
return {
  require('nvim-ts-autotag').setup {
    setup = function() end,
    get_opts = {

      enable_close = true, -- Automatically close tags
      enable_rename = true, -- Automatically rename tags
      enable_close_on_slash = false, -- Disable auto-closing on trailing `</`
    },
  },
  require('nvim-autopairs').setup {
    check_ts = true, -- Use Tree-sitter for smarter pairing (optional)
    disable_filetype = { 'TelescopePrompt' }, -- Prevent pairing in Telescope prompt
    fast_wrap = {}, -- Enables fast wrapping feature
  },
  cmp.event:on('confirm_done', cmp_autopairs.on_confirm_done()),
}
