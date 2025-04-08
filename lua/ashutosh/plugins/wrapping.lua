return {
	"andrewferrier/wrapping.nvim",
	opts = {
		create_keymaps = false,
	},
	keys = {
		{
			"<leader>ww",
			function()
				require("wrapping").toggle_wrap_mode()
			end,
			desc = "Toggle Word Wrap",
		},
	},
	config = function(_, opts)
		require("wrapping").setup(opts)
	end,
}
