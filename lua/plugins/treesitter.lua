return {
  {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    build = ":TSUpdate",

    config = function()
      local treesitter = require("nvim-treesitter")

      treesitter.install({
        "lua",
        "python",
        "c",
        "cpp",
        "latex",
        "markdown",
        "markdown_inline",
        "bash",
        "json",
        "yaml",
        "toml",
      })

      vim.api.nvim_create_autocmd("FileType", {
        pattern = {
          "lua",
          "python",
          "c",
          "cpp",
          "latex",
          "markdown",
          "bash",
          "json",
          "yaml",
          "toml",
        },

        callback = function()
          vim.treesitter.start()
        end,
      })
    end,
  },
}
