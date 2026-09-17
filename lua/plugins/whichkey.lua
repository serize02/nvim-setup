return {
    {
        "folke/which-key.nvim",
        event = "VeryLazy",

        opts = {
            delay = 300,

            icons = {
                mappings = false,
            },

            spec = {
                { "<leader>f", group = "file" },
                { "<leader>b", group = "buffer" },
                { "<leader>s", group = "session" },
                { "<leader>c", group = "code" },
            },
        },
    },
}
