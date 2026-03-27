return {
  -- https://github.com/zbirenbaum/copilot-cmp
  -- Turns copilot.lua into a full completion source
  {
    'zbirenbaum/copilot-cmp',
    config = function()
      require('copilot_cmp').setup()
    end,
  },
  -- GitHub Copilot Lua plugin
  -- https://github.com/zbirenbaum/copilot.lua?tab=readme-ov-file#setup-and-configuration
  {
    'zbirenbaum/copilot.lua',
    cmd = 'Copilot',
    event = 'InsertEnter',
    opts = {
      panel = {
        enabled = false,
      },
      suggestion = {
        enabled = false,
        auto_trigger = true,
      },
      copilot_node_command = 'node',
      filetypes = {
        python = true,
        lua = true,
        yaml = true,
        markdown = true,
        go = true,
      },
    },
  },
}
