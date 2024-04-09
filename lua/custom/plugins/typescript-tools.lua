return {
  'pmizio/typescript-tools.nvim',
  dependencies = { 'nvim-lua/plenary.nvim' },
  opts = {},
  config = function()
    require('typescript-tools').setup {
      on_attach = function(client)
        client.server_capabilities.documentFormattingProvider = false
        client.server_capabilities.documentRangeFormattingProvider = false
        client.server_capabilities.renameProvider = false
        client.server_capabilities.signatureHemlProvider = false
      end,
      vim.keymap.set('n', '<leader>ci', ':TSToolsAddMissingImports<CR>', { desc = 'Add Missing [I]Imports' }),
      vim.keymap.set('n', '<leader>co', ':TSToolsOrganizeImports<CR>', { desc = '[O]rganize Imports' }),
    }
  end,
}
