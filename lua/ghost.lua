-- Browser editing via GhostText / nvim-ghost
vim.g.nvim_ghost_server_port = vim.g.nvim_ghost_server_port or 4001

local ghost_group = vim.api.nvim_create_augroup("nvim_ghost_user_autocommands", { clear = true })

for _, pattern in ipairs({ "*github.com", "www.reddit.com", "www.stackoverflow.com" }) do
  vim.api.nvim_create_autocmd("User", {
    group = ghost_group,
    pattern = pattern,
    callback = function()
      vim.bo.filetype = "markdown"
    end,
  })
end

vim.api.nvim_create_autocmd("User", {
  group = ghost_group,
  pattern = "*fastmail.com",
  callback = function()
    vim.bo.filetype = "mail"
  end,
})
