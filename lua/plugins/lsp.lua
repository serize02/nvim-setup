return {
    {
        "neovim/nvim-lspconfig",
        config = function()
            local capabilities = require("blink.cmp").get_lsp_capabilities()
            vim.lsp.config("basedpyright", {
                capabilities
            })
            vim.lsp.config("basedpyright", {})
            vim.lsp.enable("basedpyright")
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
