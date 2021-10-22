vim.g.dashboard_default_executive = 'telescope'
vim.g.dashboard_custom_section = {
   a = { description = { "  Find File                 SPC f f" }, command = "Telescope find_files" },
   b = { description = { "  Recents                   SPC f o" }, command = "Telescope oldfiles" },
   c = { description = { "  Find Word                 SPC f w" }, command = "Telescope live_grep" },
   d = { description = { "洛 New File                  SPC f n" }, command = "DashboardNewFile" },
   e = { description = { "  Bookmarks                 SPC b m" }, command = "Telescope marks" },
   f = { description = { "  Load Last Session         SPC l  " }, command = "SessionLoad" },
}
vim.api.nvim_exec([[
	nmap <Leader>ss :<C-u>SessionSave<CR>
	nmap <Leader>sl :<C-u>SessionLoad<CR>
	nnoremap <silent> <Leader>fh :DashboardFindHistory<CR>
	nnoremap <silent> <Leader>ff :DashboardFindFile<CR>
	nnoremap <silent> <Leader>tc :DashboardChangeColorscheme<CR>
	nnoremap <silent> <Leader>fa :DashboardFindWord<CR>
	nnoremap <silent> <Leader>fb :DashboardJumpMark<CR>
	nnoremap <silent> <Leader>cn :DashboardNewFile<CR>	
	nnoremap <silent> <Leader>k :Dashboard<CR>
    
    let g:dashboard_custom_header=[
        \'',
        \'                                                                                        ',
        \'                        ▄███▄▄▄▄▄▄▄                              ▄▄             ▄▄      ',  
        \'        ▄▄           ▐███████████████              ▄▄▄▄▄▄        ██▌           ███      ',   
        \'       ▐██▌           ▀▀███▌     ▀████          ▄██████████     ▐██▌          ▐███      ',   
        \'       ████             ▐██▌       ▀███       █████▀▀▀▀████▌    ▐██           ███       ',   
        \'       ████              ██▌        ███     █████▀       ██▌    ███          ████        ',  
        \'      ▐█████             ███        ▐██▌   ████▀                ███         ▐███        ',   
        \'      ███████   ▄▄██     ███▄▄▄▄▄▄▄████▌  ████                 ▐███▄▄██████████         ', 
        \'      ███ ██████████     █████████████▀  ████                  █████████▀▀▀████         ',   
        \'     ▐██████████▀       ▐████████████▄   ███                  ▐███        ▐███          ',   
        \'    ▄██████████         ▐███   ▀▀███████████                  ███         ███           ',   
        \'   █████▀    ████       ▐███      ▀██████████▄               ████        ████           ',   
        \'   ▀███       ████▄     ▐███        █████████████▄▄▄   ▄▄▄██████         █████▄▄        ',   
        \'   ▐███        █████▄▄▄▄███▌          █████▀ ▀█████████████████          ████████       ',  
        \'   ███▌        ████████████                       ▀▀▀▀▀▀▀  ███           ▐█████▀▀       ',  
        \'  ████           ▀▀████▀▀▀                                 ▀▀                           ',  
        \]
]], false)

