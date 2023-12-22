--[[
Set Neovim global variables.
]]




local vim_global = vim.g

-- disable netrw at the very start of init.lua
vim_global.loaded_netrw = 1
vim_global.loaded_netrwPlugin = 1

vim_global.UltiSnipsExpandTrigger = "<tab>"
vim_global.UltiSnipsJumpForwardTrigger = "<c-b>"
vim_global.UltiSnipsJumpBackwardTrigger = "<c-z>"

-- If you want :UltiSnipsEdit to split your window.
vim_global.UltiSnipsEditSplit = "vertical"
