-- Minimalist Neovim Config
--
-- Options!
vim.o.number = true
vim.o.relativenumber = true
vim.o.scrolloff = 10

-- HELLS YES NEW PLEASE!
require('vim._core.ui2').enable()

require("loadpackages")
require("proglangs")
require("clipboard")
require("theme")
require("statusline")
require("git")
require("lsp")
require("diags")
require("easeofuse")
require("fileexplorer")
require("completion")
