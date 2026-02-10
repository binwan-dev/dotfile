return {
	"mason-org/mason-lspconfig.nvim",
	opts = {
		ensure_installed = {
			"csharp_ls",
			"gopls",
			"rust_analyzer",
		},
	},
	dependencies = {
		{
			"mason-org/mason.nvim",
			opts = {
				ui = {
					icons = {
						package_installed = "✓",
						package_pending = "➜",
						package_uninstalled = "✗",
					},
				},
			},
		},
		"neovim/nvim-lspconfig",
	},
}
