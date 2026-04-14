-- set wrapmargin=120
-- set wrap
-- set linebreak
vim.o.textwidth=120
vim.o.wrap=true

vim.keymap.set(
  "n",
  "<leader>mp",
  "<Plug>MarkdownPreviewToggle",
  { buffer = true, desc = "Toggle markdown preview" }
)
