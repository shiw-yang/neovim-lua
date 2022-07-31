local packer = require("packer")
packer.startup({
  function(use)
    -- Packer 可以管理自己本身
    use 'wbthomason/packer.nvim'
    -- 你的插件列表...
    --------------------- colorschemes --------------------
    -- tokyonight
    use("folke/tokyonight.nvim")
    ------------------------------------------------------- 
	-- nvim-tree 
    use({ "kyazdani42/nvim-tree.lua", requires = "kyazdani42/nvim-web-devicons" })
	-------------------------------------------------------
	-- bufferline 
    use({ "akinsho/bufferline.nvim", requires = { "kyazdani42/nvim-web-devicons", "moll/vim-bbye" }})
	-------------------------------------------------------
	-- lualine 
    use({ "nvim-lualine/lualine.nvim", requires = { "kyazdani42/nvim-web-devicons" } })
    use("arkav/lualine-lsp-progress")
	-- telescope   
	use { 'nvim-telescope/telescope.nvim', requires = { "nvim-lua/plenary.nvim" } }
	-- telescope extensions
	use "LinArcX/telescope-env.nvim"
	-- dashboard-nvim (新增)
    use("glepnir/dashboard-nvim")
	-- project
	use("ahmedkhalf/project.nvim")
  end,
  config = {
    -- 并发数限制
    max_jobs = 16,
    -- 自定义源
    git = {
      -- default_url_format = "https://hub.fastgit.xyz/%s",
      -- default_url_format = "https://mirror.ghproxy.com/https://github.com/%s",
      -- default_url_format = "https://gitcode.net/mirrors/%s",
      -- default_url_format = "https://gitclone.com/github.com/%s",
    },
  },
})

-- 每次保存 plugins.lua 自动安装插件
pcall(
  vim.cmd,
  [[
    augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
    augroup end
  ]]
)
