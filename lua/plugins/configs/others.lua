require('nvim_comment').setup()

require('nvim-autopairs').setup{
	disable_filetype = { "TelescopePrompt" }
}

require'colorizer'.setup({ "*" }, {
         RGB = true, -- #RGB hex codes
         RRGGBB = true, -- #RRGGBB hex codes
	
         names = true, -- "Name" codes like Blue
         RRGGBBAA = true, -- #RRGGBBAA hex codes
         rgb_fn = true, -- CSS rgb() and rgba() functions
         hsl_fn = true, -- CSS hsl() and hsla() functions
         css = true, -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
         css_fn = true, -- Enable all CSS *functions*: rgb_fn, hsl_fn

         -- Available modes: foreground, background
         mode = "background", -- Set the display mode.
      })
-- vim.cmd "ColorizerReloadAllBuffers"

vim.opt.list = true
vim.opt.listchars:append("space:⋅")
vim.opt.listchars:append("eol:↴")

require("indent_blankline").setup {
    space_char_blankline = " ",
    show_current_context = true,
    buftype_exclude = {"terminal"},
    filetype_exclude = {"dashboard"}
}


vim.api.nvim_exec([[
    augroup fmt:
    autocmd!
    autocmd BufWritePre * undojoin | Neoformat
    augroup END

    let g:neoformat_basic_format_align = 1

]] ,false)
