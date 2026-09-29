return {
  {
    "neovim/nvim-lspconfig",
    config = function()
      local function on_attach(client, bufnr)
        if client.server_capabilities.documentSymbolProvider then
          require("nvim-navic").attach(client, bufnr)
        end
      end
      local capabilities = require("blink.cmp").get_lsp_capabilities()
      vim.lsp.config("basedpyright", {
        on_attach = on_attach,
        capabilities = capabilities,
        settings = {
          basedpyright = {
            analysis = {
              diagnosticMode = "openFilesOnly",
              autoSearchPaths = true,
            },
          },
        },
      })
      vim.lsp.enable("basedpyright")
      vim.lsp.config("clangd", {
        capabilities = capabilities,
        cmd = { "clangd" },
        filetypes = {"c", "cpp", "objc", "objcpp"},
        root_markers = {
          "compile_commands.json",
          "compile_flags.txt",
          ".git"
        }
      })
      vim.lsp.enable("clangd")
      vim.lsp.config("marksman", {
        cmd = { "marksman", "server" },
        filetypes = { "markdown", "markdown.mdx" },
        root_markers = { ".marksman.toml", ".git" },
      })
      vim.lsp.enable("marksman")
      vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition" })
      vim.keymap.set("n", "gr", vim.lsp.buf.references, { desc = "Find references" })
      vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Hover documentation" })
      vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { desc = "Rename symbol" })
      vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code action" })

      vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "Show diagnostic" })

      vim.keymap.set("n", "[d", function()
        vim.diagnostic.jump({ count = -1, float = true })
      end, { desc = "Previous diagnostic" })

      vim.keymap.set("n", "]d", function()
        vim.diagnostic.jump({ count = 1, float = true })
      end, { desc = "Next diagnostic" })
    end,
  },
}
