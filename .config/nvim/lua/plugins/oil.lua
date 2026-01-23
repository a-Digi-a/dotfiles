return {
	"stevearc/oil.nvim",
	---@module 'oil'
	---@type oil.SetupOpts
	opts = {

		view_options = {
			show_hidden = true,
		},
		skip_confirm_for_simple_edits = true,
	},
	dependencies = { { "nvim-mini/mini.icons", opts = {} } },
	lazy = false,
}
