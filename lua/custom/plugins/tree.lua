return {
  require('nvim-tree').setup {
    hijack_netrw = true, -- Replace default file explorer
    view = {
      width = 30, -- Adjust the width of the sidebar
      side = 'left', -- Position: "left" or "right"
    },
    renderer = {
      group_empty = true,
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
    filters = {
      custom = {
        '^.git$',
        '^.github$',
        '^node_modules$',
      },
    },
  },
  -- Make :bd and :q behave as usual when tree is visible
  vim.api.nvim_create_autocmd({ 'BufEnter', 'QuitPre' }, {
    nested = false,
    callback = function(e)
      local tree = require('nvim-tree.api').tree

      -- Nothing to do if tree is not opened
      if not tree.is_visible() then
        return
      end

      -- How many focusable windows do we have? (excluding e.g. incline status window)
      local winCount = 0
      for _, winId in ipairs(vim.api.nvim_list_wins()) do
        if vim.api.nvim_win_get_config(winId).focusable then
          winCount = winCount + 1
        end
      end

      -- We want to quit and only one window besides tree is left
      if e.event == 'QuitPre' and winCount == 2 then
        vim.api.nvim_cmd({ cmd = 'qall' }, {})
      end

      -- :bd was probably issued an only tree window is left
      -- Behave as if tree was closed (see `:h :bd`)
      if e.event == 'BufEnter' and winCount == 1 then
        -- Required to avoid "Vim:E444: Cannot close last window"
        vim.defer_fn(function()
          -- close nvim-tree: will go to the last buffer used before closing
          tree.toggle { find_file = true, focus = true }
          -- re-open nivm-tree
          tree.toggle { find_file = true, focus = false }
        end, 10)
      end
    end,
  }),
  vim.keymap.set('n', '<leader>ee', ':NvimTreeToggle<CR>', { noremap = true, silent = true, desc = 'Tree Toggle' }), -- Toggle file browser
  vim.keymap.set('n', '<leader>eF', ':NvimTreeFocus<CR>', { noremap = true, silent = true, desc = 'Tree Focus' }), -- Focus the file browser
  vim.keymap.set('n', '<leader>ef', ':NvimTreeFindFile<CR>', { noremap = true, silent = true, desc = 'Tree Find' }), -- Focus the file browser
}
