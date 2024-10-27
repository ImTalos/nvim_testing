local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not (vim.uv or vim.loop).fs_stat(lazypath) then
	vim.fn.mkdir(lazypath, "p")
	local utils = require("talos.utils")
	local source_path = utils.get_dependency("lazy.nvim") .. "/."
	local out = vim.fn.system({ "cp", "-r",source_path, lazypath })
	if vim.v.shell_error ~= 0 then
	    vim.api.nvim_echo({
	      { "Failed to copy lazy.nvim:\n", "ErrorMsg" },
	      { out, "WarningMsg" },
	      { "\nPress any key to exit..." },
	    }, true, {})
	    vim.fn.getchar()
	    os.exit(1)
  end
end

vim.opt.rtp:prepend(lazypath)
vim.g.mapleader = "'" 
require("lazy").setup("plugins")
