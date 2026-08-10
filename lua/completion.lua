require("blink.compat").setup({})

require("emoji").setup({
  enable_cmp_integration = true,
  plugin_path = vim.fn.stdpath("data") .. "/site/pack/core/opt/",
})

require("blink.cmp").setup({
  sources = {
    default = { "lsp", "path", "snippets", "buffer", "emoji" },
    providers = {
      emoji = {
        name = "emoji",
        module = "blink.compat.source",
        transform_items = function(_, items)
          local kind = require("blink.cmp.types").CompletionItemKind.Text
          for i = 1, #items do
            items[i].kind = kind
          end
          return items
        end,
      },
    },
  },
})
