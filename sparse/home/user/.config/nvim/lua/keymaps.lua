--[[
Set Neovim keymappings.
]]




keymap = vim.keymap

local opts = { noremap=true, silent=true}

keymap.set('n', "<space>e", vim.diagnostic.open_float, opts)
keymap.set('n', "[d", vim.diagnostic.goto_prev, opts)
keymap.set('n', "]d", vim.diagnostic.goto_next, opts)
keymap.set('n', "<space>q", vim.diagnostic.setloclist, opts)

on_attach = function(client, bufnr)
    local vim_api = vim.api
    local bufopts = { noremap=true, silent=true, buffer=bufnr }

    vim_api.nvim_buf_set_option(bufnr, "omnifunc", "v:lua.vim.lsp.omnifunc")

    keymap.set('n', "gD", vim.lsp.buf.declaration, bufopts)
    keymap.set('n', "gd", vim.lsp.buf.definition, bufopts)
    keymap.set('n', "K", vim.lsp.buf.hover, bufopts)
    keymap.set('n', "gi", vim.lsp.buf.implementation, bufopts)
    keymap.set('n', "<C-k>", vim.lsp.buf.signature_help, bufopts)
    keymap.set('n', "<space>wa", vim.lsp.buf.add_workspace_folder, bufopts)
    keymap.set('n', "<space>wr", vim.lsp.buf.remove_workspace_folder, bufopts)
    keymap.set('n', "<space>wl", function()
                   print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
               end, bufopts)
    keymap.set('n', "<space>D", vim.lsp.buf.type_definition, bufopts)
    keymap.set('n', "<space>rn", vim.lsp.buf.rename, bufopts)
    keymap.set('n', "<space>ca", vim.lsp.buf.code_action, bufopts)
    keymap.set('n', "gr", vim.lsp.buf.references, bufopts)
    keymap.set('n', "<space>f", function()
                   vim.lsp.buf.format { async = true }
               end, bufopts)
end

