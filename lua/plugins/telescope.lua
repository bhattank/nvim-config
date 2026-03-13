-- latest tag (12 March 2026) - v0.2.1
-- contains the key bindings for the telescope
-- keep in mind: you could remove "tag" completely and when you run :Lazy update, you will get the latest release.


return {
    'nvim-telescope/telescope.nvim', tag = 'v0.2.1',
    dependencies = { 'nvim-lua/plenary.nvim' },

    config = function()
	local builtin = require('telescope.builtin')
	vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
	vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
	vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
	vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
    end 
    }
