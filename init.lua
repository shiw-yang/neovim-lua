-- basic config
require("basic")

-- plugins settings
require("plugins")

-- color skins
require("colorscheme")

-- keybindings
require("keybindings")

-- colorscheme
local colorscheme = "tokyonight"
local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
	vim.notify("colorscheme " .. colorscheme .. " 没有找到！")
	return
end

-- plugins config
require("plugin-config.nvim-tree")
require("plugin-config.bufferline")
require("plugin-config.lualine")
require("plugin-config.telescope")
require("plugin-config.dashboard")
require("plugin-config.project")
require("plugin-config.nvim-treesitter")
require("plugin-config.auto-pairs")
require("plugin-config.comment")
require("plugin-config.vim-go")

-- lsp
require("lsp.setup")
require("lsp.cmp")
require("lsp.ui")
require("plugin-config.indent-blankline")
require("lsp.fomatter")
