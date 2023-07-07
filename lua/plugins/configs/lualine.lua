require('lualine').setup({
options = {
  theme = 'vscode',          -- lualine theme
  disabled_filetypes = {},  -- filetypes to diable lualine on
  always_divide_middle = true, -- When true left_sections (a,b,c) can't
  globalstatus = true,
}
})


require("bufferline").setup{
    options = {
        offsets = { { filetype = "NvimTree",text = "EXPLORER", text_align = "center" }},
        buffer_close_icon = "",
        modified_icon = "",
        close_icon = "",
        close_command = "Bdelete %d",
        show_close_icon = false,
        left_trunc_marker = "",
        right_trunc_marker = "",
        max_name_length = 14,
        max_prefix_length = 13,
        tab_size = 20,
        show_tab_indicators = true,
        enforce_regular_tabs = false,
        view = "multiwindow",
        show_buffer_close_icons = true,
        separator_style = "thin",
        always_show_bufferline = true,
        diagnostics = false, -- "or nvim_lsp"
        custom_filter = function(buf_number)
           -- Func to filter out our managed/persistent split terms
           local present_type, type = pcall(function()
              return vim.api.nvim_buf_get_var(buf_number, "term_type")
           end)
  
           if present_type then
              if type == "vert" then
                 return false
              elseif type == "hori" then
                 return false
              else
                 return true
              end
           else
              return true
           end
        end,
     },
    highlights = {
        fill = {
            guifg = { attribute = "fg", highlight = "Normal" },
            guibg = { attribute = "bg", highlight = "StatusLineNC" },
        },
        background = {
            guifg = { attribute = "fg", highlight = "Normal" },
            guibg = { attribute = "bg", highlight = "StatusLine" },
        },
        buffer_visible = {
            gui = "",
            guifg = { attribute = "fg", highlight = "Normal" },
            guibg = { attribute = "bg", highlight = "Normal" },
        },
        buffer_selected = {
            gui = "",
            guifg = { attribute = "fg", highlight = "Normal" },
            guibg = { attribute = "bg", highlight = "Normal" },
        },
        separator = {
            guifg = { attribute = "bg", highlight = "Normal" },
            guibg = { attribute = "bg", highlight = "StatusLine" },
        },
        separator_selected = {
            guifg = { attribute = "fg", highlight = "Special" },
            guibg = { attribute = "bg", highlight = "Normal" },
        },
        separator_visible = {
            guifg = { attribute = "fg", highlight = "Normal" },
            guibg = { attribute = "bg", highlight = "StatusLineNC" },
        },
        close_button = {
            guifg = { attribute = "fg", highlight = "Normal" },
            guibg = { attribute = "bg", highlight = "StatusLine" },
        },
        close_button_selected = {
            guifg = { attribute = "fg", highlight = "normal" },
            guibg = { attribute = "bg", highlight = "normal" },
        },
        close_button_visible = {
            guifg = { attribute = "fg", highlight = "normal" },
            guibg = { attribute = "bg", highlight = "normal" },
        },
    },

}

vim.cmd [[
      set guioptions-=e " Use showtabline in gui vim
      set sessionoptions+=tabpages,globals " store tabpages and globals in session
    ]]
