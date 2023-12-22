--[[
Set Neovim options.
]]




vim_fn = vim.fn

local vim_opt = vim.opt

vim_opt.autoindent = false
vim_opt.backupcopy = "auto"
vim_opt.backupdir = {vim_fn.expand("$HOME") .. "/workspace/personal/var/backup/nvim//"}
vim_opt.backupext = ".bk"
vim_opt.breakindent = true
vim_opt.breakindentopt = {min = 16, shift = 0, list = 2}
vim_opt.cdhome = true
vim_opt.cedit = "<C-F>"
vim_opt.cmdwinheight = 8
vim_opt.colorcolumn = "81"
vim_opt.copyindent = true
vim_opt.cursorline = true
vim_opt.errorfile = "nvim_quickfix.err"
vim_opt.expandtab = true
vim_opt.foldclose = "all"
vim_opt.foldcolumn = "auto"
vim_opt.foldenable = false
vim_opt.guicursor = {n, v, c, sm = "hor20", i, ci, ve = "ver25", r, cr, o = "blinkwait400-blinkon200-blinkoff200"}
vim_opt.ignorecase = true
vim_opt.langmap = {"ФA", "ИB", "СC", "ВD", "УE", "АF", "ПG", "РH", "ШI", "ОJ", "ЛK", "ДL", "ЬM", "ТN", "ЩO", "ЗP", "ЙQ", "КR", "ЫS", "ЕT", "ГU", "МV", "ЦW", "ЧX", "НY", "ЯZ", "фa", "иb", "сc", "вd", "уe", "аf", "пg", "рh", "шi", "оj", "лk", "дl", "ьm", "тn", "щo", "зp", "йq", "кr", "ыs", "еt", "гu", "мv", "цw", "чx", "нy", "яz"}
vim_opt.linebreak = true
vim_opt.list = true
vim_opt.listchars = {tab = ">-", space = "·"}
vim_opt.maxmempattern = 1024
vim_opt.menuitems = 32
vim_opt.mouse = "a"
vim_opt.mousemodel = "popup_setpos"
vim_opt.number = true
vim_opt.path={".", "./../include", "/usr/include", "/usr/local/include", vim_fn.expand("$HOME") .. "/.local/include", "",}
vim_opt.preserveindent = true
vim_opt.pumblend = 16
vim_opt.scrolloff = 1
vim_opt.shellslash = true
vim_opt.shiftwidth = 4
vim_opt.showcmd = true
vim_opt.showmode = true
vim_opt.showtabline = 2
vim_opt.smartcase = true
vim_opt.smartindent = true
vim_opt.smarttab = true
vim_opt.spell = true
vim_opt.spelllang = {"en", "ru"}
vim_opt.suffixes = {".bak", ".bk", "~", ".o", ".h", ".info", ".swp", ".obj"}
vim_opt.synmaxcol = 4096
vim_opt.tabpagemax = 64
vim_opt.tagcase = "followscs"
vim_opt.termguicolors = false
vim_opt.title = true
vim_opt.titlelen = 80
vim_opt.updatecount = 256
vim_opt.updatetime = 32000
vim_opt.whichwrap = "<,>,[,]"
vim_opt.winblend = 8
vim_opt.wrap = true
