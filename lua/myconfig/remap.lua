local function map(mode, lhs, rhs, opts)
  local options = { noremap=true, silent=true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

vim.g.mapleader = " "

-- Better Escape
map('i', 'jk', '<Esc>')

-- Better Nav
map('n', '<C-h>', '<C-w>h')
map('n', '<C-j>', '<C-w>j')
map('n', '<C-k>', '<C-w>k')
map('n', '<C-l>', '<C-w>l')

-- Better Save
map('n', '<leader>s', ':w<CR>')
map('n', '<leader>S', ':wa<CR>')

-- Buffers
map('n', '<S-h>', '<cmd>:BufferLineCyclePrev<CR>')
map('n', '<S-l>', '<cmd>:BufferLineCycleNext<CR>')
map('n', '<leader>c', ':Bdelete<CR>')

-- NVIMTree
map('n', '<C-n>', ':NvimTreeToggle<CR>')
--map('n', '<C-n>', ':NvimTreeFindFile<CR>')

-- aerial list 
map('n', '<C-f>', '<cmd>Telescope aerial<CR>')

-- colorscheme
map('n', '<leader>cs', '<cmd>lua ColorMyPencils()<CR>')

map('n', 'gb', '<C-o>')

