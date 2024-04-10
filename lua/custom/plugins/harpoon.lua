return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local harpoon = require 'harpoon'

    -- REQUIRED
    harpoon:setup()
    -- REQUIRED

    vim.keymap.set('n', '<leader>ha', function()
      harpoon:list():add()
    end, { desc = '[A]dd Harpoon' })
    vim.keymap.set('n', '<leader>hr', function()
      harpoon:list():remove()
    end, { desc = '[R]emove Harpoons' })
    vim.keymap.set('n', '<leader>hc', function()
      harpoon:list():clear()
    end, { desc = '[C]lear Harpoon' })
    vim.keymap.set('n', '<leader>hl', function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end, { desc = 'Toggle Quick [L]ist' })

    vim.keymap.set('n', '<leader>hy', function()
      harpoon:list():select(1)
    end, { desc = 'Go To First' })
    vim.keymap.set('n', '<leader>hu', function()
      harpoon:list():select(2)
    end, { desc = 'Go To Second' })
    vim.keymap.set('n', '<leader>hi', function()
      harpoon:list():select(3)
    end, { desc = 'Go To Third' })
    vim.keymap.set('n', '<leader>ho', function()
      harpoon:list():select(4)
    end, { desc = 'Go To Fourth' })

    -- Toggle previous & next buffers stored within Harpoon list
    vim.keymap.set('n', '<leader>hp', function()
      harpoon:list():prev()
    end, { desc = 'Go To Previous' })
    vim.keymap.set('n', '<leader>hn', function()
      harpoon:list():next()
    end, { desc = 'Go To Next' })
  end,
}
