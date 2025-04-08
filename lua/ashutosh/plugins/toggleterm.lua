return {
	"akinsho/toggleterm.nvim",
	version = "*",

	config = function()
		require("toggleterm").setup()
		vim.api.nvim_set_keymap(
			"n",
			"<leader>nf",
			"<cmd>ToggleTerm direction=float<cr>",
			{ noremap = true, silent = true, desc = "Float terminal" }
		)
		vim.api.nvim_set_keymap(
			"n",
			"<leader>nv",
			"<cmd>ToggleTerm direction=vertical<cr>",
			{ noremap = true, silent = true, desc = "Vertical terminal" }
		)
		vim.api.nvim_set_keymap(
			"n",
			"<leader>nt",
			"<cmd>ToggleTerm direction=tab<cr>",
			{ noremap = true, silent = true, desc = "Terminal in new tab" }
		)
		vim.api.nvim_set_keymap(
			"n",
			"<leader>nr",
			"<cmd>ToggleTerm direction=horizontal<cr>",
			{ noremap = true, silent = true, desc = "Horizontal terminal" }
		)
	end,
}
