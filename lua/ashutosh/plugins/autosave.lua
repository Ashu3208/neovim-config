return {
	{
		"okuuva/auto-save.nvim",
		cmd = "ASToggle",
		event = { "InsertLeave", "TextChanged" },
		config = function()
			require("auto-save").setup({
				enabled = true,
				execution_message = {
					enabled = true,
					message = function()
						return ("AutoSave: saved at " .. vim.fn.strftime("%H:%M:%S"))
					end,
					dim = 0.18,
					cleaning_interval = 1250,
				},
				trigger_events = {
					immediate_save = { "BufLeave", "FocusLost" },
					defer_save = { "InsertLeave", "TextChanged" },
					cancel_defered_save = { "InsertEnter" },
				},
				condition = nil,
				write_all_buffers = false,
				noautocmd = false,
				lockmarks = false,
				debounce_delay = 1000,
				debug = false,
			})
			vim.api.nvim_set_keymap(
				"n",
				"<leader>ns",
				":ASToggle<CR>",
				{ noremap = true, silent = true, desc = "Toggle Auto Save (⌨️ <leader>ns)" }
			)
		end,
	},
}
