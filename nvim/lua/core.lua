local keys = require("custom_keys")

local builtin = require('telescope.builtin')

local function set_keymap()
	vim.keymap.set('n', keys.open_netrw, ":Explore<CR>", {})
  
	vim.keymap.set('n', keys.find_files, builtin.find_files, {})
	vim.keymap.set('n', keys.live_grep, builtin.live_grep, {})
	vim.keymap.set('n', keys.buffers, builtin.buffers, {})
	vim.keymap.set('n', keys.help_tags, builtin.help_tags, {})

	vim.keymap.set('n', keys.prev_tab, ":BufferPrevious<CR>", {})
	vim.keymap.set('n', keys.next_tab, ":BufferNext<CR>", {})
	vim.keymap.set('n', keys.close_tab, ":BufferClose<CR>", {})

end

set_keymap()
