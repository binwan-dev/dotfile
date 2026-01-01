return {
	"f-person/auto-dark-mode.nvim",
	lazy = false,
	event = "VimEnter",
	config = function()
		local adm = require("auto-dark-mode")

		adm.setup({
			update_interval = 3000, -- 3秒检查一次
			set_dark_mode = function()
				vim.opt.background = "dark"
			end,
			set_light_mode = function()
				vim.opt.background = "light"
			end,
		})

		-- 启动监听
		adm.init()
	end,
}
