local api = require('Comment.api')

 -- Toggle current line (blockwise) using C-\

        vim.keymap.set('n', '<C-/>', api.toggle.linewise.current)
