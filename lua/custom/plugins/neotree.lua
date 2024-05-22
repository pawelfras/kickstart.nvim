return {
  'nvim-neo-tree/neo-tree.nvim',
  branch = 'v3.x',
  name = 'neo-tree',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
    -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
  },
  config = function()
    require('neo-tree').setup {
      -- window = {
      --   position = 'left',
      -- },
      buffers = {
        follow_current_file = {
          enabled = true,
        },
      },
      filesystem = {
        follow_current_file_enabled = {
          enabled = true,
        },
      },
    }
    vim.keymap.set('n', '<leader>tr', ':Neotree reveal<CR>', { desc = '[R]eveal On File' })
    vim.keymap.set('n', '<leader>ts', ':Neotree git_status<CR>', { desc = 'Git [S]tatus' })
  end,
}
