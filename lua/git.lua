require("gitsigns").setup({
  on_attach = function(bufnr)
    local gitsigns = require("gitsigns")

    local function map(mode, lhs, rhs, desc)
      vim.keymap.set(mode, lhs, rhs, { buffer = bufnr, desc = desc })
    end

    map("n", "]h", gitsigns.next_hunk, "Next hunk")
    map("n", "[h", gitsigns.prev_hunk, "Previous hunk")
    map("n", "<leader>hs", gitsigns.stage_hunk, "Stage hunk")
    map("n", "<leader>hr", gitsigns.reset_hunk, "Reset hunk")
    map("n", "<leader>hS", gitsigns.stage_buffer, "Stage buffer")
    map("n", "<leader>hR", gitsigns.reset_buffer, "Reset buffer")
    map("n", "<leader>hp", gitsigns.preview_hunk, "Preview hunk")
    map("n", "<leader>hb", function()
      gitsigns.blame_line({ full = true })
    end, "Blame line")
    map("n", "<leader>hd", gitsigns.diffthis, "Diff this")
    map("n", "<leader>hD", function()
      gitsigns.diffthis("~")
    end, "Diff this against ~")
  end,
})

vim.keymap.set("n", "<leader>gs", vim.cmd.Git, { desc = "Git status" })
