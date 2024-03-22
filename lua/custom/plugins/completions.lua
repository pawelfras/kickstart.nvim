vim.g.copilot_filetypes = {
  ['*'] = false,
  yaml = true,
  plaintext = true,
  markdown = true,
  javascript = true,
  typescript = true,
  jsonc = true,
  html = true,
  css = true,
  scss = true,
}
return {
  {
    'github/copilot.vim',
  },
}
