-- Hit a prefix and show all potential keystrokes you can choose
-- as well as what they do. Priceless!
require("which-key").setup()

-- Neovim 0.12 builtin undotree
vim.keymap.set('n', '<leader>u', vim.cmd.Undotree, { desc = 'Toggle Undotree' })
