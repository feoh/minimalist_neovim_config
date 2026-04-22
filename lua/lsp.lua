-- Enable the LSPs!
vim.lsp.enable({'lua_ls',
                'clangd',
                'basedpyright',
                'rust_analyzer',
                'ruff',
                'ty',
                'yamlls',
              })

-- Lazydev lets lua_ls find Neovim's runtime so 
-- we don't get vim global not found spewed 
-- everywhere :)
vim.pack.add({'https://github.com/folke/lazydev.nvim.git'})
require("lazydev").setup()

-- Keybindings
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { desc = 'Goto Definition' })
vim.keymap.set('n', 'gr', vim.lsp.buf.references, { desc = 'Goto References' })
