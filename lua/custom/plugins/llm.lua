return {
  'Kurama622/llm.nvim',
  dependencies = { 'nvim-lua/plenary.nvim', 'MunifTanjim/nui.nvim' },
  cmd = { 'LLMSessionToggle', 'LLMSelectedTextHandler', 'LLMAppHandler' },
  config = function()
    local tools = require 'llm.tools'
    require('llm').setup {
      url = 'http://localhost:1234/v1/chat/completions',
      model = 'codestral-22',
      api_type = 'openai',
      app_handler = {
        CodeExplain = {
          handler = tools.flexi_handler,
          prompt = 'Explain the following code, please only return the explanation, and answer in English',
          opts = {
            enter_flexible_window = true,
          },
        },
      },
    }
  end,
  keys = {
    { '<leader>ac', mode = 'n', '<cmd>LLMSessionToggle<cr>', desc = 'EvilChat Chat' },
    { '<leader>ae', mode = 'v', '<cmd>LLMAppHandler CodeExplain<cr>', desc = 'EvilChat Explain' },
  },
}
