vim.api.nvim_set_keymap('n', '<Tab>',  [[<Cmd>BufferLineCycleNext<cr>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<S-Tab>',  [[<Cmd>BufferLineCyclePrev<cr>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('', '<Leader>v',  [[<Cmd>SidebarNvimToggle<cr>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', ';', '<C-w>', {noremap = true, silent = true} )
vim.api.nvim_set_keymap('n', '<S-CR>', '<m-enter>', {noremap = true, silent = true} )
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
-- lsp
vim.api.nvim_set_keymap('n','K','<Cmd>CodeActionMenu<CR>', {noremap=  true, silent = false})

vim.api.nvim_exec([[
   tnoremap <Esc> <C-\><C-n><CR>]]
   ,false)
-- Dashboard
vim.api.nvim_set_keymap('n','<Leader>ss','<Cmd>SessionSave<CR>', {noremap=  true})
vim.api.nvim_set_keymap('n','<Leader>sl','<Cmd>SessionLoad<CR>', {noremap=  true})
vim.api.nvim_set_keymap('n','<Leader>fh','<Cmd>DashboardFindHistory<CR>', {noremap=  true})
vim.api.nvim_set_keymap('n','<Leader>ff','<Cmd>DashboardFindFile<CR>', {noremap=  true})
vim.api.nvim_set_keymap('n','<Leader>fo','<Cmd>Telescope oldfiles<CR>', {noremap=  true})
vim.api.nvim_set_keymap('n','<Leader>tc','<Cmd>DashboardChangeColorscheme<CR>', {noremap=  true})
vim.api.nvim_set_keymap('n','<Leader>fa','<Cmd>DashboardFindWord<CR>', {noremap=  true})
vim.api.nvim_set_keymap('n','<Leader>fb','<Cmd>DashboardJumpMark<CR>', {noremap=  true})
vim.api.nvim_set_keymap('n','<Leader>fn','<Cmd>DashboardNewFile<CR>', {noremap=  true})
vim.api.nvim_set_keymap('n','<Leader>k','<Cmd>Dashboard<CR>', {noremap=  true})


