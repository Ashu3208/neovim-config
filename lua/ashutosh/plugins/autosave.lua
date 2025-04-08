return {
	"pocco81/auto-save.nvim",
	event = "VeryLazy",
	init = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 500
	end,
	opts = {
		-- your configuration comes here
		-- or leave it empty to use the default settings
		-- refer to the configuration section below
		debounce_delay = 5000,
	},
	config = function()
		vim.api.nvim_set_keymap(
			"n",
			"<leader>ns",
			":ASToggle<CR>",
			{ noremap = true, silent = true, desc = "Toggle Auto Save" }
		)
	end,
}
