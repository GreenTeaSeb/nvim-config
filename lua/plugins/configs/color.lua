vim.opt.termguicolors = true
-- require("github-theme").setup({
--   theme_style = "dark_default",
-- })
--
vim.o.background = 'dark'
local c = require('vscode.colors')
require('vscode').setup({
    -- Enable transparent background
    transparent = true,
    -- Enable italic comment
    italic_comments = true,
    -- Disable nvim-tree background color
    disable_nvimtree_bg = true,
    -- Override colors (see ./lua/vscode/colors.lua)
    color_overrides = {
        vscLineNumber = '#FFFFFF',
    },

    group_overrides = {
        Cursor = { fg=c.vscDarkBlue, bg=c.vscLightGreen, bold=true },
    }
})
