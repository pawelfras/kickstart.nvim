return {
  'pmizio/typescript-tools.nvim',
  dependencies = { 'nvim-lua/plenary.nvim', 'neovim/nvim-lspconfig' },
  opts = {},
  config = function()
    require('typescript-tools').setup {
      vim.keymap.set('n', '<leader>ci', ':TSToolsAddMissingImports<CR>', { desc = 'Add Missing [I]Imports' }),
      vim.keymap.set('n', '<leader>co', ':TSToolsOrganizeImports<CR>', { desc = '[O]rganize Imports' }),
    }
  end,
}
