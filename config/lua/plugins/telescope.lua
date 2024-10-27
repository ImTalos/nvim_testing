local utils = require("talos.utils")
-- Telescope fuzzy finding (all the things)
return {
	{
		dir = utils.get_dependency("telescope.nvim"),
		dependencies = {
			{dir = utils.get_dependency("plenary.nvim")},
			-- Fuzzy Finder Algorithm which requires local dependencies to be built. Only load if `make` is available
--			{ dir = utils.get_dependency("telescope-fzf-native.nvim"), build = "make", cond = vim.fn.executable("make") == 1 },
		},
		config = function()
			--require("telescope").setup({})

			-- Enable telescope fzf native, if installed
			pcall(require("telescope").load_extension, "fzf")
			-- keymappings
			local builtin = require('telescope.builtin')
			-- need to create function - to defile git_files if git exists
			vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
			--vim.keymap.set('n', '<leader>g', builtin.git_files {})
			vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
			vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
			vim.keymap.set('n', '<leader>fw', builtin.diagnostics, {})
--			vim.keymap.set('n', '<leader>g', builtin. {})
		  end
	  },
  }
