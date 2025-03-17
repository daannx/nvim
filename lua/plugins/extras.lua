return {
    {
        "goolord/alpha-nvim",
        opts = function(_, dashboard)
            local logo = [[
           ___
         .';:;'.
        /_' _' /\   __
        ;a/ e= J/-'"  '.
        \ ~_   (  -'  ( ;_ ,.
         L~"'_.    -.  \ ./  )
         ,'-' '-._  _;  )'   (
       .' .'   _.'")  \  \(  |
      /  (  .-'   __\{`', \  |
     / .'  /  _.-'   "  ; /  |
    / /    '-._'-,     / / \ (
 __/ (_    ,;' .-'    / /  /_'-._
`"-'` ~`  ccc.'   __.','     \j\L\
                 .='/|\7      
                   ' `
]]
            dashboard.section.header.val = vim.split(logo, "\n")
        end,
    },

    --- Toggle Term
    {
        "akinsho/toggleterm.nvim",
        config = true,
        cmd = "ToggleTerm",
        keys = { { "<F4>", "<cmd>ToggleTerm<cr>", desc = "Toggle terminal" } },
        opts = {
            open_mapping = [[<F4>]],
            direction = "float",
            shade_filetypes = {},
            hide_numbers = true,
            insert_mappings = true,
            terminal_mappings = true,
            start_in_insert = true,
            close_on_exit = true,
        },
    },
    {
        "folke/snacks.nvim",
        opts = {
            dashboard = { enabled = false },
            scratch = {
                ft = "text",
                cmd = "Scratch",
                name = "Scratch",
            },
        },
    },

    {
        "rebelot/kanagawa.nvim",
        name = "kanagawa",
        opts = {
            compile = false, -- enable compiling the colorscheme
            undercurl = true, -- enable undercurls
            commentStyle = { italic = true },
            functionStyle = {},
            keywordStyle = { italic = true },
            statementStyle = { bold = true },
            typeStyle = {},
            transparent = false, -- do not set background color
            dimInactive = true, -- dim inactive window `:h hl-NormalNC`
            terminalColors = true, -- define vim.g.terminal_color_{0,17}
            colors = { -- add/modify theme and palette colors
                palette = {},
                theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
            },
            overrides = function(colors) -- add/modify highlights
                return {}
            end,
            background = { -- map the value of 'background' option to a theme
                dark = "wave", -- try "dragon" !
                light = "lotus",
            },
        },
    },
}
