local runtime_path = vim.split(package.path, ";")
table.insert(runtime_path, "lua/?.lua")
table.insert(runtime_path, "lua/?/init.lua")

local opts = {
	settings = {
		gopls = {
			-- TODO:add config
		},
	},
}

-- 查看目录等信息
return {
	on_setup = function(server)
		server:setup(opts)
	end,
}
