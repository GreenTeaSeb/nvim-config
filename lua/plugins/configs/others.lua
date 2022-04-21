require('nvim_comment').setup()

require('nvim-autopairs').setup{
	disable_filetype = { "TelescopePrompt" }
}

vim.opt.list = true
-- vim.opt.listchars:append("space:⋅")
vim.opt.listchars:append("eol:↴")

require("indent_blankline").setup {
	space_char_blankline = " ",
	show_current_context = true,
	buftype_exclude = {"terminal"},
    filetype_exclude = {"startup","TelescopePrompt"}
}

