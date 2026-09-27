return {
  {
    "nvim-tree/nvim-tree.lua",
    dependencies = { "nvim-tree/nvim-web-devicons",},
    config = function()
      local api = require("nvim-tree.api")

      api.events.subscribe(api.events.Event.FileCreated, function(file)
        vim.cmd("edit " .. vim.fn.fnameescape(file.fname))
      end)

      require("nvim-tree").setup({
        renderer = {
          icons = {
            glyphs = {
              folder = {
                arrow_closed = ">",
                arrow_open = "v",
              },
            },

            show = {
              file = true,
              folder = false,
              folder_arrow = true,
              git = false,
            },
          },
        },
      })

      vim.keymap.set("n", "<leader>fe", ":NvimTreeToggle<CR>")
    end,
  },
}
