return {
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",

    config = function()
      local autopairs = require("nvim-autopairs")
      local Rule = require("nvim-autopairs.rule")

      autopairs.setup({})

      autopairs.add_rules({
        Rule("$", "$", "tex"),
      })
    end,
  },
}
