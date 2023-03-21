-------------------------------------------------
-- BASED ON DT'S NEOVIM CONFIGURATION
-- I just deleted most of the plugins he used
-- Neovim website: https://neovim.io/
-- DT's dotfiles: https://gitlab.com/dwt1/dotfiles
-------------------------------------------------

local status, packer = pcall(require, "packer")
if not status then
	print("Packer is not installed")
	return
end

-- Reloads Neovim after whenever you save plugins.lua
vim.cmd([[
    augroup packer_user_config
      autocmd!
     autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup END
]])

packer.startup(function(use)
	-- Packer can manage itself
	use("wbthomason/packer.nvim")

	use("folke/which-key.nvim") -- Which Key
	use("nvim-lualine/lualine.nvim") -- A better statusline

	-- File management --
	use("scrooloose/nerdtree")
	use("tiagofumo/vim-nerdtree-syntax-highlight")
	use("ryanoasis/vim-devicons")

	use("tpope/vim-surround") -- No MS notepad emulation

	-- Syntax Highlighting and Colors --
	use("vim-python/python-syntax")
	use("ap/vim-css-color")
	use("nickeb96/fish.vim")

	-- Colorschemes --
	use("dracula/vim")

	-- Other stuff --
	use("frazrepo/vim-rainbow")

	if packer_bootstrap then
		packer.sync()
	end
end)

