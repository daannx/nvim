return {
    {
        "catppuccin/nvim",
    },

    {
        "rebelot/kanagawa.nvim",
        name = "kanagawa",
        opts = {
            colors = { -- add/modify theme and palette colors
                palette = {},
                theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
            },

            theme = "dragon", -- Load "wave" theme when 'background' option is not set
            background = { -- map the value of 'background' option to a theme
                dark = "dragon", -- try "dragon" !
                light = "lotus",
            },
        },
    },
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "kanagawa-wave",
        },
    },
}
