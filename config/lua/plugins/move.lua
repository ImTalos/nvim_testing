local plugpath = vim.env.NVIM_PATH .. "/move.nvim"
return {
  -- Move lines / blocks plugin
  {
    dir = plugpath,
    opts = {
	line = {
		enable = true, -- Enables line movement
		indent = true  -- Toggles indentation
	},
	block = {
		enable = true, -- Enables block movement
		indent = true  -- Toggles indentation
	},
	word = {
		enable = false, -- Enables word movement
	},
	char = {
		enable = false -- Enables char movement
	}
      }
  },
  
}
