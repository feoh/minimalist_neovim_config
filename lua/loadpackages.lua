-- theme
vim.pack.add({"https://github.com/catppuccin/nvim"})
-- lualine
vim.pack.add({'https://github.com/nvim-tree/nvim-web-devicons'})
vim.pack.add({'https://github.com/nvim-lualine/lualine.nvim'})

vim.pack.add({'https://github.com/neovim/nvim-lspconfig'})
vim.pack.add({'https://github.com/folke/which-key.nvim.git'})
vim.pack.add({{src='https://github.com/Saghen/blink.cmp.git', version="v1.10.1"}})
vim.pack.add({'https://github.com/stevearc/oil.nvim.git'})

-- Typescript
vim.pack.add({"https://github.com/nvim-lua/plenary.nvim"})
vim.pack.add({"https://github.com/pmizio/typescript-tools.nvim"})


-- Done specifying packages. Update them all!
vim.pack.update(nil, {force=true})
