return {
	"nvim-telescope/telescope-project.nvim",
	dependencies = {
		"nvim-telescope/telescope.nvim",
	},
	config = function()
		local telescope = require("telescope")
		local project_actions = require("telescope._extensions.project.actions")

		telescope.load_extension("project")

		telescope.setup({
			extensions = {
				project = {
					base_dir = {
						"~/Documents/brothers/project",
						{ "~/Documents/binwan-dev/project" },
					},
					hidden_files = true,
					theme = "dropdown",
					order_by = "asc",
					search_by = "title",
					sync_with_nvim_tree = true,
					on_project_selected = function(prompt_bufnr)
						project_actions.change_working_directory(prompt_bufnr, false)
					end,
				},
			},
		})

		local keymap = vim.keymap

		keymap.set(
			"n",
			"<C-p>",
			":lua require'telescope'.extensions.project.project{}<CR>",
			{ noremap = true, silent = true }
		)
	end,
}
