# Minimalist Neovim Configuration

In the spirit of 2025 being the "Year of Neovim Out Of The Box" 
I'm trying an experiment in minimalism to see how much of Neovim's
default behavior I can utilize without installing a third party plugin.

And thus far I am LOVING the experience!

## Git integration

This config includes:

- [tpope/vim-fugitive](https://github.com/tpope/vim-fugitive) for Git porcelain inside Neovim
- [tpope/vim-rhubarb](https://github.com/tpope/vim-rhubarb) for GitHub-aware Fugitive integration
- [lewis6991/gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim) for inline hunk signs and actions

The statusline also shows the current Git branch and diff summary when applicable.

### Key mappings

- `<leader>gs` — open Fugitive status (`:Git`)
- `]h` / `[h` — next / previous hunk
- `<leader>hs` — stage hunk
- `<leader>hr` — reset hunk
- `<leader>hS` — stage buffer
- `<leader>hR` — reset buffer
- `<leader>hp` — preview hunk
- `<leader>hb` — blame current line
- `<leader>hd` — diff current file
- `<leader>hD` — diff current file against `~`

## Browser editing

This config also includes [subnut/nvim-ghost.nvim](https://github.com/subnut/nvim-ghost.nvim)
for editing browser textareas via GhostText.

Configured behavior:

- uses the default GhostText port `4001`
- sets `filetype=markdown` for common markdown-heavy sites like GitHub, Reddit, and Stack Overflow
- sets `filetype=mail` for `fastmail.com`
