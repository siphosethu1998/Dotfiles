a = vim.api

-- keymaps and remaps
--a.nvim_set_keymap('i', 'jk', '<ESC>', { noremap = true })
--a.nvim_set_keymap('i', 'kj', '<ESC>', { noremap = true })

-- fix these later
a.nvim_set_keymap('n', '<C-a><C-a>', '<C-a>', { noremap = true })
a.nvim_set_keymap('v', '<C-a><C-a>', '<C-a>', { noremap = true })
a.nvim_set_keymap('v', 'g<C-a><C-a>', 'g<C-a>', { noremap = true })

