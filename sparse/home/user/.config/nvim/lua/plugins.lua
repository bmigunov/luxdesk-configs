--[[
Neovim plugins setup.
]]




local vim_call = vim.call
local Plug = vim_fn["plug#"]

vim_call("plug#begin", "~/.local/share/nvim/plugged")
Plug("neovim/nvim-lspconfig", {tag = "v0.1.6"})

Plug("nvim-tree/nvim-web-devicons", {tag = "nerd-v2-compat"})
Plug("nvim-tree/nvim-tree.lua", {tag = "compat-nvim-0.7"})

Plug("nvim-lualine/lualine.nvim")

Plug("hrsh7th/cmp-nvim-lsp")
Plug("hrsh7th/cmp-buffer")
Plug("hrsh7th/cmp-path")
Plug("hrsh7th/cmp-cmdline")
Plug("hrsh7th/nvim-cmp")

Plug("SirVer/ultisnips")

Plug("justinmk/vim-sneak", {tag = "1.8.1"})

Plug("lewis6991/gitsigns.nvim", {tag = "v0.6"})
vim_call("plug#end")

require("nvim-tree").setup()

require("lualine").setup()

require("gitsigns").setup()

local cmp = require("cmp")
cmp.setup({
    snippet = {
        expand = function(args)
        vim_fn["UltiSnips#Anon"](args.body)
        end,
    },
    window = {
    },
    mapping = cmp.mapping.preset.insert({
        ["<C-b>"] = cmp.mapping.scroll_docs(-4),
        ["<C-f>"] = cmp.mapping.scroll_docs(4),
        ["<C-Space>"] = cmp.mapping.complete(),
        ["<C-e>"] = cmp.mapping.abort(),
        ["<CR>"] = cmp.mapping.confirm({ select = true }),
    }),
    sources = cmp.config.sources({
        { name = "nvim_lsp" },
        { name = "ultisnips" },
    }, {
        { name = "buffer" },
    })
})

cmp.setup.filetype("gitcommit", {
    sources = cmp.config.sources({
        { name = "git" },
    }, {
        { name = "buffer" },
    })
})

cmp.setup.cmdline({ '/', '?' }, {
    mapping = cmp.mapping.preset.cmdline(),
    sources = {
        { name = "buffer" }
    }
})

cmp.setup.cmdline(':', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = cmp.config.sources({
        { name = "path" }
    }, {
        { name = "cmdline" }
    })
})
