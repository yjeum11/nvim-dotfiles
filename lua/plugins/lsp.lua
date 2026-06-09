vim.opt.signcolumn = "yes"
require("mason").setup()

vim.cmd[[:set cot+=noselect,menuone,popup]]
vim.api.nvim_create_autocmd('LspAttach', {
    callback = function(ev)
        local client = vim.lsp.get_client_by_id(ev.data.client_id)
        if client:supports_method('textDocument/completion') then

            -- enable autocompletion on every keypress
            local chars = {}
            for i = 32, 126 do table.insert(chars, string.char(i)) end
            client.server_capabilities.completionProvider.triggerCharacters = chars

            vim.lsp.completion.enable(true, client.id, ev.buf, { autotrigger = true })
        end
    end,
})

vim.diagnostic.config( { virtual_text = true } )
vim.lsp.enable("clangd")
