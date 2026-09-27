return {
  {
    "saghen/blink.cmp",
    version = "*",

    opts = {
      keymap = {
        preset = "enter",
      },

      appearance = {
        nerd_font_variant = "mono",
      },

      completion = {
        documentation = {
          auto_show = true,
        },
      },

      sources = {
        default = {
          "lsp",
          "path",
          "snippets",
          "buffer",
        },
      },
    },

    opts_extend = {
      "sources.default",
    },
  },
}
