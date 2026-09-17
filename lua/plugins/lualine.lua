return {
    {
        "nvim-lualine/lualine.nvim",

        config = function()
            local function conda_env()
                return os.getenv("CONDA_DEFAULT_ENV") or ""
            end

            require("lualine").setup({
                options = {
                    theme = "onedark",
                },
                sections = {
                    lualine_a = { "mode" },
                    lualine_b = { "branch", "diff", "diagnostics" },
                    lualine_c = { "filename" },
                    lualine_x = { conda_env, "filetype" },
                    lualine_y = { "progress" },
                    lualine_z = { "location" },
                },
            })
        end,
    },
}
