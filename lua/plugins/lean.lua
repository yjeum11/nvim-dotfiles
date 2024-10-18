require('lean').setup{ mappings = true }
require('telescope').setup()

vim.keymap.set('n', '<leader>l', ':Telescope loogle<CR>')

local mappings = {
  ['@lsp.type.variable'] = 'Identifier',
}

for from, to in pairs(mappings) do
  vim.cmd.highlight('link ' .. from .. ' ' .. to)
end
