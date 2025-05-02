local lsp = require("lsp-zero")
local lsp_attach = function(client, bufnr)
    local opts = { buffer = bufnr, remap = false }

    vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
    vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
    vim.keymap.set("n", "<leader>vws", vim.lsp.buf.workspace_symbol, opts)
    vim.keymap.set("n", "<leader>vd", vim.diagnostic.open_float, opts)
    vim.keymap.set("n", "[d", vim.diagnostic.goto_next, opts)
    vim.keymap.set("n", "]d", vim.diagnostic.goto_prev, opts)
    vim.keymap.set("n", "<leader>vca", vim.lsp.buf.code_action, opts)
    vim.keymap.set("n", "<leader>vrr", vim.lsp.buf.references, opts)
    vim.keymap.set("n", "<leader>vrn", vim.lsp.buf.rename, opts)
    vim.keymap.set("i", "<C-h>", vim.lsp.buf.signature_help, opts)
end

lsp.preset("recommended")

-- Fix Undefined global 'vim'
lsp.configure('lua-language-server', {
    settings = {
        Lua = {
            diagnostics = {
                globals = { 'vim' }
            }
        }
    }
})

require('lspconfig').biome.setup({
  on_attach = lsp_attach,
})

-- ZLS
require('lspconfig').zls.setup({
  on_attach = lsp_attach,
})
--

-- Super HTML
require('lspconfig.configs').superhtml = {
    default_config = {
        name = 'superhtml',
        cmd = {'superhtml', 'lsp'},
        filetypes = {'shtml', 'superhtml', 'html', 'htm'},
        root_dir = require('lspconfig.util').root_pattern('.git')
    }
}
lsp.configure('superhtml', {force_setup = true})
--

lsp.set_preferences({
    suggest_lsp_servers = false,
    sign_icons = {
        error = 'E',
        warn = 'W',
        hint = 'H',
        info = 'I'
    }
})

lsp.on_attach(lsp_attach)
lsp.setup()

vim.diagnostic.config({
    virtual_text = true,
})
