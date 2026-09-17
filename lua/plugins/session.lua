return {
    {
        "folke/persistence.nvim",
        event = "BufReadPre",
        opts = {},

        config = function(_, opts)
            require("persistence").setup(opts)

            vim.keymap.set("n", "<leader>ss", function()
                require("persistence").load()
            end)

            vim.keymap.set("n", "<leader>sl", function()
                require("persistence").load({ last = true })
            end)

            vim.keymap.set("n", "<leader>sd", function()
                require("persistence").stop()
            end)
        end,
    },
}
