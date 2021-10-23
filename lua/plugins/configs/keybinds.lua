-- 
-- function close_buff()
--     local n = #vim.fn.getbufinfo { buflisted = 1 } 
--     --local n = vim.api.nvim_eval([[len(getbufinfo({'buflisted':1}))]])
--     return [[echo ]].. n
-- end
-- 
vim.api.nvim_set_keymap('n', '<Tab>',  [[<Cmd>BufferLineCycleNext<cr>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>v',  [[<Cmd>CHADopen<cr>]], { noremap = true, silent = true })



--vim.api.nvim_set_keymap('n', '<Leader>q',  close_buff(), { noremap = true, silent = true })
vim.api.nvim_exec([[
    function! Close()
	 if len(getbufinfo({'buflisted':1})) == 1
	     :Dashboard
	 else 
	    :bd!
	 endif
    endfunction
    map <silent> <Leader>q :call Close()<CR>
    ]],false)
