--[[
Language Servers setup.
]]




local capabilities = require("cmp_nvim_lsp").default_capabilities()
local lsp_flags = {
    debounce_text_changes = 150,
}

require("lspconfig")["asm_lsp"].setup {
    on_attach = on_attach,
    flags = lsp_flags,
    capabilities = capabilities,
}

require("lspconfig")["clangd"].setup {
    on_attach = on_attach,
    flags = lsp_flags,
    capabilities = capabilities,
}

require("lspconfig")["cmake"].setup {
    on_attach = on_attach,
    flags = lsp_flags,
    capabilities = capabilities,
}

require("lspconfig")["dockerls"].setup {
    on_attach = on_attach,
    flags = lsp_flags,
    capabilities = capabilities,
}

require("lspconfig")["erlangls"].setup {
    on_attach = on_attach,
    flags = lsp_flags,
    capabilities = capabilities,
}

require("lspconfig")["html"].setup {
    on_attach = on_attach,
    flags = lsp_flags,
    capabilities = capabilities,
}

require("lspconfig")["jdtls"].setup {
    on_attach = on_attach,
    flags = lsp_flags,
    capabilities = capabilities,
}

require("lspconfig")["jsonls"].setup {
    on_attach = on_attach,
    flags = lsp_flags,
    capabilities = capabilities,
}

require("lspconfig")["ltex"].setup {
    on_attach = on_attach,
    flags = lsp_flags,
    capabilities = capabilities,
}

require("lspconfig")["m68k"].setup {
    on_attach = on_attach,
    flags = lsp_flags,
    capabilities = capabilities,
}

require("lspconfig")["marksman"].setup {
    on_attach = on_attach,
    flags = lsp_flags,
    capabilities = capabilities,
}

require("lspconfig")["perlls"].setup {
    on_attach = on_attach,
    flags = lsp_flags,
    capabilities = capabilities,
}

require("lspconfig")["phan"].setup {
    on_attach = on_attach,
    flags = lsp_flags,
    capabilities = capabilities,
}

require("lspconfig")["pyright"].setup {
    on_attach = on_attach,
    flags = lsp_flags,
    capabilities = capabilities,

    settings = {
        python = {
            analysis = {
                autoSearchPaths = true,
                diagnosticMode = "workspace",
                useLibraryCodeForTypes = true
            }
        }
    }
}

require("lspconfig")["qmlls"].setup {
    on_attach = on_attach,
    flags = lsp_flags,
    capabilities = capabilities,
}

require("lspconfig")["quick_lint_js"].setup {
    on_attach = on_attach,
    flags = lsp_flags,
    capabilities = capabilities,
}

require("lspconfig")["rust_analyzer"].setup {
    on_attach = on_attach,
    flags = lsp_flags,
    capabilities = capabilities,

    settings = {
        ["rust-analyzer"] = {}
    }
}

require("lspconfig")["sqlls"].setup {
    on_attach = on_attach,
    flags = lsp_flags,
    capabilities = capabilities,
}

require("lspconfig")["sumneko_lua"].setup {
    on_attach = on_attach,
    flags = lsp_flags,
    capabilities = capabilities,
}
