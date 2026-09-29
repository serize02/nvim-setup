return {
  "akinsho/toggleterm.nvim",
  version = "*",

  config = function()
    require("toggleterm").setup({
      size = function(term)
        if term.direction == "horizontal" then
          return vim.o.lines * 0.5
        elseif term.direction == "vertical" then
          return vim.o.columns * 0.5
        end
      end,

      hide_numbers = true,
      shade_terminals = false,
      start_in_insert = true,
      insert_mappings = false,
      persist_size = false,
      close_on_exit = true,

      float_opts = { border = "curved",},
    })

    local Terminal = require("toggleterm.terminal").Terminal
    local horizontal = Terminal:new({ direction = "horizontal",})
    local vertical = Terminal:new({ direction = "vertical",})
    local floating = Terminal:new({ direction = "float",})

    vim.keymap.set("n", "<leader>/", function()
      horizontal:toggle()
    end, { desc = "Toggle horizontal terminal" })

    vim.keymap.set("n", "<leader>\\", function()
      vertical:toggle()
    end, { desc = "Toggle vertical terminal" })

    vim.keymap.set("n", "<leader>tt", function()
      floating:toggle()
    end, { desc = "Toggle floating terminal" })

    vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Terminal normal mode",})
    vim.keymap.set("t", "<S-Space>", "<Space>")
  end,
}
