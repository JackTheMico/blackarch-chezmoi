-- blink setup with emoji cmp
return {
  "saghen/blink.cmp",
  optional = true,
  dependencies = { "allaman/emoji.nvim", { "saghen/blink.compat", lazy = true, version = false } },
  opts = {
    sources = {
      compat = { "obsidian", "obsidian_new", "obsidian_tags" },
      default = { "emoji" },
      providers = {
        emoji = {
          name = "emoji",
          module = "blink.compat.source",
          -- overwrite kind of suggestion
          transform_items = function(ctx, items)
            local kind = require("blink.cmp.types").CompletionItemKind.Text
            for i = 1, #items do
              items[i].kind = kind
            end
            return items
          end,
        },
      },
    },
  },
}
