-- theme
vim.pack.add({"https://github.com/catppuccin/nvim"})

vim.api.nvim_create_autocmd("PackChanged", {
  callback = function(event)
    if event.data.spec.name ~= "markdown-preview.nvim" then
      return
    end

    if event.data.kind ~= "install" and event.data.kind ~= "update" then
      return
    end

    if not event.data.active then
      vim.cmd.packadd("markdown-preview.nvim")
    end

    vim.fn["mkdp#util#install"]()
  end,
})

vim.g.mkdp_filetypes = { "markdown" }
vim.g.mkdp_auto_close = 1
vim.g.mkdp_command_for_global = 0

vim.pack.add({"https://github.com/iamcco/markdown-preview.nvim"}, {load=true})
-- lualine
vim.pack.add({'https://github.com/nvim-tree/nvim-web-devicons'})
vim.pack.add({'https://github.com/nvim-lualine/lualine.nvim'})

-- git
vim.pack.add({'https://github.com/tpope/vim-fugitive'})
vim.pack.add({'https://github.com/tpope/vim-rhubarb'})
vim.pack.add({'https://github.com/lewis6991/gitsigns.nvim'})

vim.pack.add({'https://github.com/neovim/nvim-lspconfig'})
vim.pack.add({'https://github.com/folke/which-key.nvim.git'})
vim.pack.add({{src='https://github.com/Saghen/blink.cmp.git', version="v1.10.2"}})
vim.pack.add({'https://github.com/stevearc/oil.nvim.git'})

-- Typescript
vim.pack.add({"https://github.com/nvim-lua/plenary.nvim"})
vim.pack.add({"https://github.com/pmizio/typescript-tools.nvim"})


-- Done specifying packages. Update them all!
-- This seems to cause issues. Disabling for now.
-- vim.pack.update(nil, {force=true})
